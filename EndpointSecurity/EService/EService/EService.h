//
//  EService.h
//  ESevice
//
//  Created by lyf on 2023/7/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    ESCTypeMessage,
    ESCTypeConfigChanged
} ESCType;

@protocol EServiceClient <NSObject>

-(void)onType:(ESCType)type data:(NSData *)data;

@end

@protocol EService <NSObject>

//en_event_type_t
-(void)subscribe:(NSData *)types;
-(void)unsubscribe:(NSData *)types;

@end

NS_ASSUME_NONNULL_END
