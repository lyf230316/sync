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

void server(void) {
    //1.创建socket
        int cfd = socket(AF_INET,SOCK_DGRAM,0);
        if(cfd<0){
            perror("socket error");
            return;
        }

        //绑定
        struct sockaddr_in serv;
        struct sockaddr_in client;
        bzero(&serv,sizeof(serv));
        serv.sin_family = AF_INET;
        serv.sin_port = htons(8888);
        serv.sin_addr.s_addr = htonl(INADDR_ANY);
        bind(cfd,(struct sockaddr *)&serv,sizeof(serv));

        //3.循环读取读取客户端消息和给客户端回复消息
        int i;
        int n;
        socklen_t len;
        char buf[1024];
        while(1){
            //4.读取数据
            memset(buf,0x00,sizeof(buf));
            len = sizeof(client);
            n = recvfrom(cfd,buf,sizeof(buf),0,(struct sockaddr*)&client,&len);

            //将大写转换为小写
            for(i=0;i<n;i++){
                buf[i] = toupper(buf[i]);
            }
            printf("[%d]:n=[%d],buf=[%s]\n",ntohs(client.sin_port),n,buf);
            //5.给客户端回复消息
            sendto(cfd,buf,n,0,(struct sockaddr*)&client,len);
        }
        //关闭套接字
        close(cfd);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        server();
    }
    return 0;
}
