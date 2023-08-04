//
//  ESClient.h
//  EService
//
//  Created by msi on 2023/8/1.
//

#import <Foundation/Foundation.h>
#import <EndpointSecurity/EndpointSecurity.h>

NS_ASSUME_NONNULL_BEGIN

API_AVAILABLE(macos(10.15))
@interface ESClient : NSObject

@property(nonatomic, copy)void(^messageBlk)(ESClient *client,const es_message_t *message);

- (es_return_t)mute_process_events:(const audit_token_t *)audit_token events:(NSArray *)events API_AVAILABLE(macosx(10.12));

@end

NS_ASSUME_NONNULL_END
