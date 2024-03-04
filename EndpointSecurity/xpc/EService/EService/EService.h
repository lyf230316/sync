//
//  EService.h
//  ESevice
//
//  Created by lyf on 2023/7/30.
//

#import <Foundation/Foundation.h>
#import <EndpointSecurity/EndpointSecurity.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    ESCTypeMessage,
    ESCTypeConfigChanged
} ESCType;

@protocol EServiceClient <NSObject>

-(void)onType:(ESCType)type data:(NSData *)data;

@end

@protocol EService <NSObject>

- (void)connectionTest:(void(^)(BOOL))callback;

- (void)subscribe:(NSData *)types callback:(void (^)(es_return_t))callback;
- (void)unsubscribe:(NSData *)types callback:(void(^)(es_return_t code))callback;
- (void)unsubscribeAll:(void(^)(es_return_t code))callback;
- (void)subScriptions:(void(^)(es_return_t code,NSData *types))callback;
- (void)muteProcess:(audit_token_t)audit_token callback:(void(^)(es_return_t code))callback;
- (void)unmuteProcess:(audit_token_t)audit_token callback:(void(^)(es_return_t code))callback;
- (void)muteProcess:(audit_token_t)audit_token envents:(NSData *)types callback:(void(^)(es_return_t code))callback;
- (void)mutedProcessesEvents:(void(^)(es_return_t code, NSData *data))callback;
- (void)mutedPath:(NSString *)path type:(es_mute_path_type_t)type callback:(void(^)(es_return_t code))callback;
- (void)mutedPath:(NSString *)path type:(es_mute_path_type_t)type events:(NSData *)events callback:(void(^)(es_return_t code))callback;
- (void)unmutedAllPathsCallback:(void(^)(es_return_t code))callback;
- (void)unmutedAllTargetPathsCallback:(void(^)(es_return_t code))callback;
- (void)unmutePath:(NSString *)path type:(es_mute_path_type_t)type callback:(void(^)(es_return_t code))callback;
- (void)unmutePath:(NSString *)path type:(es_mute_path_type_t)type events:(NSData *)events callback:(void(^)(es_return_t code))callback;
- (void)mutedPathsEvents:(void(^)(es_return_t code, NSData *muted_paths))callback;
- (void)invertMuting:(es_mute_inversion_type_t)type callback:(void(^)(es_return_t code))callback;
- (void)mutingInverted:(es_mute_inversion_type_t)type callback:(void(^)(es_mute_inverted_return_t code))callback;
- (void)clearCache:(void(^)(es_clear_cache_result_t code))callback;

@end

NS_ASSUME_NONNULL_END
