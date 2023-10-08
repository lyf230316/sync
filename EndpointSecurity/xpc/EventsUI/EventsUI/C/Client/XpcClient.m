//
//  XpcClient.m
//  EventsUI
//
//  Created by msi on 2023/9/9.
//

#import "XpcClient.h"
#import "EService.h"
#import "swr.h"

@interface XpcClient () <EServiceClient>

@property(nonatomic, strong)NSXPCConnection *connection;
@property(nonatomic, strong)NSMutableArray *messages;

@end

@implementation XpcClient

+(instancetype)share {
    static XpcClient *client = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[XpcClient alloc]init];
    });
    return client;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.messages = [NSMutableArray array];
    }
    return self;
}

#pragma mark - 方法

- (NSError*)clearCache:(nonnull void (^)(es_clear_cache_result_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy clearCache:callback];
    }
    return resError;
}

- (NSError*)invertMuting:(es_mute_inversion_type_t)type callback:(nonnull void (^)(es_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy invertMuting:type callback:callback];
    }
    return resError;
}

- (NSError*)muteProcess:(audit_token_t)audit_token callback:(nonnull void (^)(es_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy muteProcess:audit_token callback:callback];
    }
    return resError;
}

- (NSError*)muteProcess:(audit_token_t)audit_token events:(nonnull NSData *)events callback:(nonnull void (^)(es_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy muteProcess:audit_token events:events callback:callback];
    }
    return resError;
}

- (NSError*)mutedPath:(nonnull NSString *)path type:(es_mute_path_type_t)type callback:(nonnull void (^)(es_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy mutedPath:path type:type callback:callback];
    }
    return resError;
}

- (NSError*)mutedPath:(nonnull NSString *)path type:(es_mute_path_type_t)type events:(nonnull NSData *)events callback:(nonnull void (^)(es_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy mutedPath:path type:type events:events callback:callback];
    }
    return resError;
}

- (NSError*)mutedPathsEvents:(nonnull void (^)(es_return_t, NSData * _Nonnull))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy mutedPathsEvents:callback];
    }
    return resError;
}

- (NSError*)mutedProcessesEvents:(nonnull void (^)(es_return_t, NSData * _Nonnull))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy mutedProcessesEvents:callback];
    }
    return resError;
}

- (NSError*)mutingInverted:(es_mute_inversion_type_t)type callback:(nonnull void (^)(es_mute_inverted_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy mutingInverted:type callback:callback];
    }
    return resError;
}

- (NSError*)subScriptions:(nonnull void (^)(es_return_t, NSData * _Nonnull))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy subScriptions:callback];
    }
    return resError;
}

- (NSError*)subscribe:(nonnull NSData *)types callback:(nonnull void (^)(es_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy subscribe:types callback:callback];
    }
    return resError;
}

- (NSError*)unmutePath:(nonnull NSString *)path type:(es_mute_path_type_t)type callback:(nonnull void (^)(es_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy unmutePath:path type:type callback:callback];
    }
    return resError;
}

- (NSError*)unmutePath:(nonnull NSString *)path type:(es_mute_path_type_t)type events:(nonnull NSData *)events callback:(nonnull void (^)(es_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy unmutePath:path type:type events:events callback:callback];
    }
    return resError;
}

- (NSError*)unmuteProcess:(audit_token_t)audit_token callback:(nonnull void (^)(es_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy unmuteProcess:audit_token callback:callback];
    }
    return resError;
}

- (NSError*)unmutedAllPathsCallback:(nonnull void (^)(es_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy unmutedAllPathsCallback:callback];
    }
    return resError;
}

- (NSError*)unmutedAllTargetPathsCallback:(nonnull void (^)(es_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy unmutedAllTargetPathsCallback:callback];
    }
    return resError;
}

- (NSError*)unsubscribe:(nonnull NSData *)types callback:(nonnull void (^)(es_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy unsubscribe:types callback:callback];
    }
    return resError;
}

- (NSError*)unsubscribeAll:(nonnull void (^)(es_return_t))callback {
    if (!self.connection) {
        return [NSError errorWithDomain:[NSString stringWithFormat:@"%@:%@:%d", [NSString stringWithUTF8String:__FILE__],[NSString stringWithUTF8String:__FUNCTION__], __LINE__] code:1 userInfo:nil];
    }
    __block NSError * resError = nil;
    id<EService> proxy = [self.connection synchronousRemoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        resError = error;
    }];
    if (!resError) {
        [proxy unsubscribeAll:callback];
    }
    return resError;
}

#pragma - mark EServiceClient

- (void)onType:(ESCType)type data:(nonnull NSData *)data {
    switch (type) {
        case ESCTypeMessage:{
            es_message_t * msg = malloc(sizeof(es_message_t));
            swr_es_message_t_read(msg, (void *)data.bytes);
            @synchronized (self.messages) {
                
            }
        }break;
        default:{
            
        }break;
    }
}

@end
