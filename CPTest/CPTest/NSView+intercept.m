//
//  NSView+intercept.m
//  CPTest
//
//  Created by msi on 2023/7/22.
//

#import "NSView+intercept.h"
#import <objc/runtime.h>

@implementation NSView (intercept)

+ (void)load {
    method_exchangeImplementations(
                                   class_getInstanceMethod([NSTextView class], @selector(beginDraggingSessionWithItems:event:source:)),
                                   class_getInstanceMethod([NSTextView class], @selector(preBeginDraggingSessionWithItems:event:source:))
                                   );
}

- (NSDraggingSession *)preBeginDraggingSessionWithItems:(NSArray<NSDraggingItem *> *)items event:(NSEvent *)event source:(id<NSDraggingSource>)source {
    return nil;
}

@end
