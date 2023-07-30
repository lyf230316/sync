//
//  XPCServer.m
//  ESevice
//
//  Created by lyf on 2023/7/30.
//

#import "XPCServer.h"

@interface XPCServer ()<NSXPCListenerDelegate>

@property(nonatomic, strong)NSXPCListener *listener;

@end

@implementation XPCServer

+ (instancetype)share {
    static XPCServer *server = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        server = [[XPCServer alloc]init];
    });
    return server;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.listener = [[NSXPCListener alloc] initWithMachServiceName:@""];
        self.listener.delegate = self;
        [self.listener resume];
    }
    return self;
}

#pragma mark - NSXPCListenerDelegate

- (BOOL)listener:(NSXPCListener *)listener shouldAcceptNewConnection:(NSXPCConnection *)newConnection {
    //TODO: 接收认证
    return YES;
}

@end
