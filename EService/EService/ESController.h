//
//  ESController.h
//  ESevice
//
//  Created by lyf on 2023/7/30.
//

#import <Foundation/Foundation.h>
#import <EndpointSecurity/EndpointSecurity.h>

NS_ASSUME_NONNULL_BEGIN

@interface ESController : NSObject

- (void)subscribe:(NSArray *)types callback:(void(^)(es_return_t code))callback;
- (void)unsubscribe:(NSArray *)types callback:(void(^)(es_return_t code))callback;
- (void)unsubscribeAll:(void(^)(es_return_t code))callback;
- (void)subScriptions:(void(^)(es_return_t code,NSArray *types))callback;

- (void)muteProcess:(auditinfo_t)audit_token callback:(void(^)(es_return_t code))callback;
- (void)unmuteProcess:(auditinfo_t)audit_token callback:(void(^)(es_return_t code))callback;
- (void)muteProcess:(auditinfo_t)audit_token envents:(NSArray *)types callback:(void(^)(es_return_t code))callback;
- (void)unmuteProcess:(auditinfo_t)audit_token envents:(NSArray *)types callback:(void(^)(es_return_t code))callback;
- (void)mutedProcess:(void(^)(es_return_t code,NSArray *audit_tokens))callback;
- (void)mutedProcessEvents:(void(^)())callback;

- (void)mutePath:(NSString *)path type:(es_mute_path_type_t)type callback:(void(^)(es_return_t code))callback;
- (void)mutePathEvents:(NSString *)path type:(es_mute_path_type_t)type enents:(NSArray *)events callback:(void(^)(es_return_t code))callback;

@end

NS_ASSUME_NONNULL_END
