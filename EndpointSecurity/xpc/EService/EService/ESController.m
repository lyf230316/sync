//
//  ESController.m
//  ESevice
//
//  Created by lyf on 2023/7/30.
//

#import "ESController.h"
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
        client = nil;
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

- (void)dealloc {
    es_delete_client(client);
}

#pragma mark - ESService

- (void)connectionTest:(void (^)(BOOL))callback {
    callback(true);
}

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

- (void)mutedProcessesEvents:(void(^)(es_return_t code, NSData *data))callback {
    es_muted_processes_t *muted_processes = nil;
    es_return_t rc = es_muted_processes_events(client, &muted_processes);
    NSData *data = nil;
    if (rc == ES_RETURN_SUCCESS) {
        size_t size = swr_es_muted_processes_t_size(muted_processes);
        void *p = malloc(size);
        swr_es_muted_processes_t_write(muted_processes, p);
        es_release_muted_processes(muted_processes);
        data = [NSData dataWithBytesNoCopy:p length:size];
    }
    callback(rc, data);
}

-(void)mutedPath:(NSString *)path type:(es_mute_path_type_t)type callback:(void(^)(es_return_t code))callback {
    es_return_t rc = es_mute_path(client, path.UTF8String, type);
    callback(rc);
}

-(void)mutedPath:(NSString *)path type:(es_mute_path_type_t)type events:(NSData *)events callback:(void(^)(es_return_t code))callback {
    uint32_t event_count = (uint32_t)events.length/sizeof(es_event_type_t);
    es_return_t rc = es_mute_path_events(client, path.UTF8String, type, events.bytes, event_count);
    callback(rc);
}

- (void)unmutedAllPathsCallback:(void(^)(es_return_t code))callback {
    es_return_t rc = es_unmute_all_paths(client);
    callback(rc);
}

- (void)unmutedAllTargetPathsCallback:(void(^)(es_return_t code))callback {
    es_return_t rc = es_unmute_all_target_paths(client);
    callback(rc);
}

- (void)unmutePath:(NSString *)path type:(es_mute_path_type_t)type callback:(void(^)(es_return_t code))callback {
    es_return_t rc = es_unmute_path(client, path.UTF8String, type);
    callback(rc);
}

- (void)unmutePath:(NSString *)path type:(es_mute_path_type_t)type events:(NSData *)events callback:(void(^)(es_return_t code))callback {
    uint32_t event_count = (uint32_t)events.length/sizeof(es_event_type_t);
    es_return_t rc = es_unmute_path_events(client, path.UTF8String, type, events.bytes, event_count);
    callback(rc);
}

-(void)mutedPathsEvents:(void(^)(es_return_t code, NSData *muted_paths))callback {
    es_muted_paths_t *muted_paths = nil;
    es_return_t rc = es_muted_paths_events(client, &muted_paths);
    NSData *data = nil;
    if (rc == ES_RETURN_SUCCESS) {
        size_t size = swr_es_muted_paths_t_size(muted_paths);
        void *p = malloc(size);
        swr_es_muted_paths_t_write(muted_paths, p);
        es_release_muted_paths(muted_paths);
        data = [NSData dataWithBytesNoCopy:p length:size];
    }
    callback(rc, data);
}

- (void)invertMuting:(es_mute_inversion_type_t)type callback:(void(^)(es_return_t code))callback {
    es_return_t rc = es_invert_muting(client, type);
    callback(rc);
}

-(void)mutingInverted:(es_mute_inversion_type_t)type callback:(void(^)(es_mute_inverted_return_t code))callback {
    es_mute_inverted_return_t rc = es_muting_inverted(client, type);
    callback(rc);
}

- (void)clearCache:(void(^)(es_clear_cache_result_t code))callback {
    es_clear_cache_result_t rc = es_clear_cache(client);
    callback(rc);
}

@end
