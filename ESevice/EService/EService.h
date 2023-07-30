//
//  EService.h
//  ESevice
//
//  Created by lyf on 2023/7/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol EServiceClient <NSObject>

-(void)message:(NSData *)msg;

@end

@protocol EService <NSObject>

//en_event_type_t
-()subscribe:(NSArray *)types;
-(void)unsubscribe:(NSArray *)types;

@end

NS_ASSUME_NONNULL_END
