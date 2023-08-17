//
//  NSWindow+Ctg.m
//  CopyTest
//
//  Created by lyf on 2023/8/17.
//

#import "NSWindow+Ctg.h"
#import <objc/runtime.h>

@implementation NSWindow (Ctg)

+ (void)load {
    method_exchangeImplementations(
                                   class_getInstanceMethod([self class], @selector(dragImage:at:offset:event:pasteboard:source:slideBack:)),
                                   class_getInstanceMethod([self class], @selector(preDragImage:at:offset:event:pasteboard:source:slideBack:))
                                   );
}

- (void)preDragImage:(NSImage *)image at:(NSPoint)baseLocation offset:(NSSize)initialOffset event:(NSEvent *)event pasteboard:(NSPasteboard *)pboard source:(id)sourceObj slideBack:(BOOL)slideFlag {
    NSLog(@"preDragImage:");
}

@end
