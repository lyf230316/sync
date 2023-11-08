//
//  DynamicStore.h
//  fwt
//
//  Created by lyf on 2023/11/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DynamicStore : NSObject
-(NSArray *)copyKeyList:(NSString *)pattern;
@end

NS_ASSUME_NONNULL_END
