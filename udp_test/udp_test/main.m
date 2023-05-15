//
//  main.m
//  udp_test
//
//  Created by msi on 2023/5/15.
//

#import <Foundation/Foundation.h>
#import <sys/socket.h>
#import <arpa/inet.h>
#import <netinet/in.h>

typedef struct data {
    char name[30];
    unsigned int num;
}Data;

void server(void) {
    int fd = socket(AF_INET, SOCK_STREAM, 0);
    if (fd == 0 ) {
        printf("%d",__LINE__);
        return;
    }
    struct sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_port = 60082;
    addr.sin_addr.s_addr = inet_addr("127.0.0.1");
    int res = bind(fd, (struct sockaddr *)&addr, sizeof(struct sockaddr));
    if (res != 0 ) {
        printf("res:%d\n",res);
        printf("%d",__LINE__);
        return;
    }
    
    char buf[10];
    struct sockaddr caddr;
    socklen_t size;
    ssize_t res_size;
    while (true) {
        res_size = recvfrom(fd, buf, 10, 0, &caddr,&size);
        if (res_size > 0) {
            struct sockaddr_in *sin = (struct sockaddr_in *)&caddr;
            char s[20];
            sprintf(s,"%s:%d",inet_ntoa(sin->sin_addr),sin->sin_port);
            printf("%s\n",s);
            sendto(fd, s, strlen(s), 0, &caddr, sizeof(struct sockaddr));
        } else {
            [NSThread sleepForTimeInterval:0.1];
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        server();
    }
    return 0;
}
