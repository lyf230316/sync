//
//  main.m
//  udp_client
//
//  Created by msi on 2023/5/15.
//

#import <Foundation/Foundation.h>
#import <sys/socket.h>
#import <arpa/inet.h>

typedef struct data {
    char name[30];
    unsigned int num;
}Data;

void client(void) {
    int fd = socket(AF_INET, SOCK_STREAM, 0);
    struct sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_port = 60082;
    addr.sin_addr.s_addr = inet_addr("127.0.0.1");
    Data data = {0};
    
    while (true) {
        ssize_t r = sendto(fd, "abc", 3, 0, (struct sockaddr *)&addr, sizeof(struct sockaddr));
        if (r >=0 ) {
            break;
        } else {
            [NSThread sleepForTimeInterval:0.01];
        }
    }
    char res[20];
    ssize_t l = -1;
    while (l <= 0) {
        char buf[10];
        struct sockaddr addr;
        socklen_t size;
        ssize_t res_size;
        res_size = recvfrom(fd, buf, 10, 0, &addr,&size);
        if (res_size > 0) {
            struct sockaddr_in *sin = (struct sockaddr_in *)&addr;
            char s[20];
            sprintf(s,"%s:%d",inet_ntoa(sin->sin_addr),sin->sin_port);
            printf("%s\n",s);
            sendto(fd, s, strlen(s), 0, &addr, sizeof(struct sockaddr));
        } else {
            [NSThread sleepForTimeInterval:0.1];
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        client();
    }
    return 0;
}
