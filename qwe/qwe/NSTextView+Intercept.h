//
//  NSTextView+Intercept.h
//  qwe
//
//  Created by lyf on 2023/5/31.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTextView (Intercept)

@property(nonatomic, copy)BOOL(^pasteBlk)(id sender);

@end

NS_ASSUME_NONNULL_END
