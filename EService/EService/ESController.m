//
//  ESController.m
//  ESevice
//
//  Created by lyf on 2023/7/30.
//

#import "ESController.h"
#import "Convert.h"

@interface ESController() {
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
    
}

#pragma mark - ESService

- (void)subscribe:(NSArray *)types callback:(void(^)(es_return_t code))callback {
    uint32_t event_count = 0;
    es_event_type_t *events = nil;
    [Convert events:types toPointer:&events count:&event_count];
    es_return_t rc = es_subscribe(client, events, event_count);
    callback(rc);
}
- (void)unsubscribe:(NSArray *)types callback:(void(^)(es_return_t code))callback {
    uint32_t event_count = 0;
    es_event_type_t *events = nil;
    [Convert events:types toPointer:&events count:&event_count];
    es_return_t rc = es_unsubscribe(client, events, event_count);
    callback(rc);
}
- (void)unsubscribeAll:(void(^)(es_return_t code))callback {
    es_return_t rc = es_unsubscribe_all(client);
    callback(rc);
}
- (void)subScriptions:(void(^)(es_return_t code,NSArray *types))callback {
    size_t count;
    es_event_type_t *subscriptions = NULL;
    es_return_t rc = es_subscriptions(client, &count, &subscriptions);
}

- (void)muteProcess:(auditinfo_t)audit_token callback:(void(^)(es_return_t code))callback {
    es_return_t rc = es_mute_process(client, &audit_token);
    callback(rc);
}

- (void)unmuteProcess:(auditinfo_t)audit_token callback:(void(^)(es_return_t code))callback {
    es_return_t rc = es_unmute_process(client, &audit_token);
    callback(rc);
}
- (void)muteProcess:(auditinfo_t)audit_token envents:(NSArray *)types callback:(void(^)(es_return_t code))callback {
    
}

@end
