//
//  main.m
//  udp_client
//
//  Created by msi on 2023/5/15.
//

#import <Foundation/Foundation.h>
#import <sys/socket.h>
#import <arpa/inet.h>

void client(void) {
    int cfd = socket(AF_INET,SOCK_DGRAM,0);
    if(cfd<0){
        perror("socket error");
        return ;
    }
    
    int n ;
    char buf[1024];
    struct sockaddr_in serv;
    serv.sin_family = AF_INET;
    serv.sin_port = htons(8888);
    inet_pton(AF_INET,"127.0.0.1",&serv.sin_addr.s_addr);
    
    while(1){
        //读取标准输入数据
        memset(buf,0x00,sizeof(buf));
        strcpy(buf, "hello");
        n = strlen(buf);
        
        //发送数据
        sendto(cfd,buf,n,0,(struct sockaddr*)&serv,sizeof(serv));
        
        //读取数据
        memset(buf,0x00,sizeof(buf));
        n = recvfrom(cfd,buf,sizeof(buf),0,NULL,NULL);
        printf("n=[%d],buf=[%s]\n",n,buf);
    }
    //关闭套接字
    close(cfd);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        client();
    }
    return 0;
}
