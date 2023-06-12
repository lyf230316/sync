#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/ip_icmp.h>
#include <netdb.h>
#include <sys/time.h>

unsigned short checksum(unsigned short *buf, int len)
{
    unsigned int sum = 0;
    unsigned short answer = 0;
    unsigned short *w = buf;
    int nleft = len;

    while (nleft > 1) {
        sum += *w++;
        nleft -= 2;
    }

    if (nleft == 1) {
        *(unsigned char *)(&answer) = *(unsigned char *)w;
        sum += answer;
    }

    sum = (sum >> 16) + (sum & 0xffff);
    sum += (sum >> 16);
    answer = ~sum;
    return answer;
}

double timediff(struct timeval *begin, struct timeval *end)
{
    int nus = (end->tv_sec - begin->tv_sec) * 1000000 + end->tv_usec - begin->tv_usec;
    return (double)nus / 1000.0;
}

int ping(const char *ip, int count, int timeout)
{
    int sockfd, size, recv_size, i;
    double total_time = 0, min_time = 999999, max_time = 0;
    struct sockaddr_in addr;
    char send_buf[128], recv_buf[128];
    struct timeval tv_begin, tv_end;
    struct hostent *host;

    host = gethostbyname(ip);
    if (!host) {
        printf("Invalid host\n");
        return -1;
    }

    sockfd = socket(AF_INET, SOCK_RAW, IPPROTO_ICMP);
    if (sockfd < 0) {
        printf("Create socket error\n");
        return -1;
    }

    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    memcpy(&addr.sin_addr.s_addr, host->h_addr_list[0], host->h_length);

    for (i = 1; i <= count; i++) {
        memset(send_buf, 0, sizeof(send_buf));
        struct icmp *icmp_hdr = (struct icmp*)send_buf;
        icmp_hdr->icmp_type = ICMP_ECHO;
        icmp_hdr->icmp_code = 0;
        icmp_hdr->icmp_id = getpid();
        icmp_hdr->icmp_seq = i;
        gettimeofday(&tv_begin, NULL);
        checksum((unsigned short*)send_buf, sizeof(struct icmp));
        sendto(sockfd, send_buf, sizeof(send_buf), 0, (struct sockaddr*)&addr, sizeof(addr));
        fd_set read_set;
        FD_ZERO(&read_set);
        FD_SET(sockfd, &read_set);
        struct timeval tv_timeout;
        tv_timeout.tv_sec = timeout;
        tv_timeout.tv_usec = 0;
        int ret = select(sockfd + 1, &read_set, NULL, NULL, &tv_timeout);
        if (ret < 0) {
            printf("select error\n");
            close(sockfd);
            return -1;
        } else if (ret == 0) {
            printf("timeout\n");
            continue;
        } else {
            recv_size = recv(sockfd, recv_buf, sizeof(recv_buf), 0);
            if (recv_size < 0) {
                printf("recvfrom error\n");
                close(sockfd);
                return -1;
            }
            gettimeofday(&tv_end, NULL);
            struct ip *ip_hdr = (struct ip*)recv_buf;
            struct icmp *icmp_hdr = (struct icmp*)(recv_buf + (ip_hdr->ip_hl << 2));
            if (icmp_hdr->icmp_type == ICMP_ECHOREPLY && icmp_hdr->icmp_id == getpid() && icmp_hdr->icmp_seq == i) {
                double time = timediff(&tv_begin, &tv_end);
                total_time += time;
                if (time < min_time) {
                    min_time = time;
                }
                if (time > max_time) {
                    max_time = time;
                }
                printf("Reply from %s: bytes=%d time=%.2fms TTL=%d\n", ip, recv_size, time, ip_hdr->ip_ttl);
            }
        }
        sleep(1);
    }

    close(sockfd);

    if (total_time == 0) {
        printf("Request timeout\n");
        return -1;
    } else {
        double avg_time = total_time / count;
        printf("--- ping statistics ---\n");
        printf("%d packets transmitted, %d packets received, %.2f%% packet loss\n", count, (int)(total_time / max_time), (double)(count - total_time / max_time) / count * 100.0);
        printf("round-trip min/avg/max = %.2f/%.2f/%.2f ms\n", min_time, avg_time, max_time);
        return 0;
    }
}

int main(int argc, char **argv)
{
    ping("192.168.1.1", 4, 1);
    return 0;
}