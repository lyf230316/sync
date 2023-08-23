//
//  AOPTool.h
//  ios_cp_t
//
//  Created by msi on 2023/8/24.
//

#import <Foundation/Foundation.h>
#import "Aspects.h"

NS_ASSUME_NONNULL_BEGIN

@interface AOPTool : NSObject

+(void)addAOP:(Class)cls block:(void(^)(NSString *methodName, id<AspectInfo> info))block;
+(void)addAOPToClass:(Class)cls block:(void(^)(NSString *methodName, id<AspectInfo> info))block;

@end

NS_ASSUME_NONNULL_END
