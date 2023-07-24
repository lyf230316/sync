//
//  NSWindow+Intercept.m
//  CPTest
//
//  Created by msi on 2023/7/21.
//

#import "NSWindow+Intercept.h"
#import <objc/runtime.h>

@implementation NSWindow (Intercept)

+ (void)load {
//    method_exchangeImplementations(
//                                   class_getInstanceMethod([self class], @selector(dragImage:at:offset:event:pasteboard:source:slideBack:)),
//                                   class_getInstanceMethod([self class], @selector(preDragImage:at:offset:event:pasteboard:source:slideBack:))
//                                   );
////    
//    method_exchangeImplementations(
//                                   class_getInstanceMethod([self class], @selector(registerForDraggedTypes:)),
//                                   class_getInstanceMethod([self class], @selector(preRegisterForDraggedTypes:))
//                                   );
}

- (void)preDragImage:(NSImage *)image at:(NSPoint)baseLocation offset:(NSSize)initialOffset event:(NSEvent *)event pasteboard:(NSPasteboard *)pboard source:(id)sourceObj slideBack:(BOOL)slideFlag {
}

- (void)preRegisterForDraggedTypes:(NSArray<NSPasteboardType> *)newTypes {
    NSLog(@"%@",self);
    NSLog(@"preRegisterForDraggedTypes:%@", newTypes);
}

@end
