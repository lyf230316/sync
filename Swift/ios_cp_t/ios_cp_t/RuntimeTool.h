//
//  RuntimeTool.h
//  ios_cp_t
//
//  Created by msi on 2023/8/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RuntimeTool : NSObject

+ (Class)meteClass:(Class)cls;
+ (NSMutableSet *)methodListForClass:(Class)cls;

@end

NS_ASSUME_NONNULL_END
