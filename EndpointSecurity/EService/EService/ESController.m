//
//  ESController.m
//  ESevice
//
//  Created by lyf on 2023/7/30.
//

#import "ESController.h"
#import "Convert.h"
#import "EService.h"
#import "swr.h"

@interface ESController()<EService> {
    es_client_t *client;
}

@end

@implementation ESController

- (instancetype)init
{
    self = [super init];
    if (self) {
        __weak typeof(self)weakSelf = self;
        es_new_client_result_t res = es_new_client(&client, ^(es_client_t * _Nonnull clt, const es_message_t * _Nonnull msg) {
            [weakSelf handle:clt msg:msg];
        });
        if (res != ES_NEW_CLIENT_RESULT_SUCCESS) {
            @throw [NSException exceptionWithName:@"es_new_client failed" reason:[NSString stringWithFormat:@"code:%d", res] userInfo:@{
                @"file":[NSString stringWithCString:__FILE__ encoding:NSUTF8StringEncoding],
                @"func":[NSString stringWithCString:__FUNCTION__ encoding:NSUTF8StringEncoding],
                @"line":@(__LINE__)
            }];
        }
    }
    return self;
}

- (void)handle:(es_client_t *)clt msg:(const es_message_t *)msg {
    if (self.connction) {
        id<EServiceClient>proxy = self.connction.remoteObjectProxy;
        size_t size = swr_es_message_t_size((es_message_t *)msg);
        void *data = malloc(size);
        swr_es_message_t_write((es_message_t *)msg, data);
        NSData *ndata = [NSData dataWithBytesNoCopy:data length:size];
        [proxy onType:ESCTypeMessage data:ndata];
    }
}

#pragma mark - ESService

- (void)subscribe:(NSData *)types callback:(void (^)(es_return_t))callback {
    uint32_t event_count = (uint32_t)types.length/sizeof(es_event_type_t);
    es_return_t rc = es_subscribe(client, (es_event_type_t *)[types bytes], event_count);
    callback(rc);
}

- (void)unsubscribe:(NSData *)types callback:(void(^)(es_return_t code))callback {
    uint32_t event_count = (uint32_t)types.length/sizeof(es_event_type_t);
    es_return_t rc = es_unsubscribe(client, (es_event_type_t *)[types bytes], event_count);
    callback(rc);
}

- (void)unsubscribeAll:(void(^)(es_return_t code))callback {
    es_return_t rc = es_unsubscribe_all(client);
    callback(rc);
}

- (void)subScriptions:(void(^)(es_return_t code,NSData *types))callback {
    size_t count;
    es_event_type_t *subscriptions = NULL;
    es_return_t rc = es_subscriptions(client, &count, &subscriptions);
    NSData *types = [NSData dataWithBytes:subscriptions length:sizeof(es_event_type_t *) * count];
    callback(rc, types);
    free(subscriptions);
}

- (void)muteProcess:(audit_token_t)audit_token callback:(void(^)(es_return_t code))callback {
    es_return_t rc = es_mute_process(client,&audit_token);
    callback(rc);
}

- (void)unmuteProcess:(audit_token_t)audit_token callback:(void(^)(es_return_t code))callback {
    es_return_t rc = es_unmute_process(client, &audit_token);
    callback(rc);
}
- (void)muteProcess:(audit_token_t)audit_token envents:(NSData *)types callback:(void(^)(es_return_t code))callback {
    uint32_t event_count = (uint32_t)types.length/sizeof(es_event_type_t);
    es_return_t rc = es_mute_process_events(client, &audit_token, (const es_event_type_t *)types.bytes, event_count);
    callback(rc);
}

@end
