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

@property(nonatomic, weak)NSXPCConnection *connction;

@end

NS_ASSUME_NONNULL_END
