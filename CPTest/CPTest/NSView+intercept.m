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
//    method_exchangeImplementations(
//                                   class_getInstanceMethod([self class], @selector(beginDraggingSessionWithItems:event:source:)),
//                                   class_getInstanceMethod([self class], @selector(preBeginDraggingSessionWithItems:event:source:))
//                                   );
//    method_exchangeImplementations(
//                                   class_getInstanceMethod([self class], @selector(registerForDraggedTypes:)),
//                                   class_getInstanceMethod([self class], @selector(preRegisterForDraggedTypes:))
//                                   );
}

- (NSDraggingSession *)preBeginDraggingSessionWithItems:(NSArray<NSDraggingItem *> *)items event:(NSEvent *)event source:(id<NSDraggingSource>)source {
    return nil;
}

- (void)preRegisterForDraggedTypes:(NSArray<NSPasteboardType> *)newTypes {
    NSLog(@"%@",self);
    NSLog(@"preRegisterForDraggedTypes:%@", newTypes);
}

@end
