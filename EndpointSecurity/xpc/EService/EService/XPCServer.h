//
//  XPCServer.h
//  ESevice
//
//  Created by lyf on 2023/7/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString *servieceName;

@interface XPCServer : NSObject
+ (instancetype)share;
@end

NS_ASSUME_NONNULL_END
