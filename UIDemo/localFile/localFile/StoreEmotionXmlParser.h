//
//  StoreEmotionXmlParser.h
//  localFile
//
//  Created by lyf on 2023/10/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StoreEmotionXmlParser : NSObject

@property(nonatomic, strong)NSMutableArray *emotions;

- (instancetype)initWithPath:(NSString *)path;

@end

NS_ASSUME_NONNULL_END
