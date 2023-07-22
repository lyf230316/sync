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
    method_exchangeImplementations(
                                   class_getInstanceMethod([NSTextView class], @selector(dragImage:at:offset:event:pasteboard:source:slideBack:)),
                                   class_getInstanceMethod([NSTextView class], @selector(preDragImage:at:offset:event:pasteboard:source:slideBack:))
                                   );
}

- (void)preDragImage:(NSImage *)image at:(NSPoint)baseLocation offset:(NSSize)initialOffset event:(NSEvent *)event pasteboard:(NSPasteboard *)pboard source:(id)sourceObj slideBack:(BOOL)slideFlag {
    
}

@end
