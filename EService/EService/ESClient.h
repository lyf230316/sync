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

@end

NS_ASSUME_NONNULL_END
