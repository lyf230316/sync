//
//  NSTextView+Intercept.m
//  qwe
//
//  Created by lyf on 2023/5/31.
//

#import "NSTextView+Intercept.h"
#import <objc/runtime.h>

@implementation NSTextView (Intercept)

static const int pasteBlkKey;

+ (void)load {
    Method originalMethod = class_getInstanceMethod([NSTextView class], @selector(paste:));
    Method swizzledMethod = class_getInstanceMethod([NSTextView class], @selector(prePaste:));
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

- (void)setPasteBlk:(BOOL (^)(id _Nonnull))pasteBlk {
    objc_setAssociatedObject(self, &pasteBlkKey, pasteBlk, OBJC_ASSOCIATION_COPY);
}

- (BOOL (^)(id _Nonnull))pasteBlk {
    return objc_getAssociatedObject(self, &pasteBlkKey);
}

- (void)prePaste:(id)sender {
    if (self.pasteBlk && self.pasteBlk(sender)) {
        return;
    }
    [self prePaste:sender];
}

@end
