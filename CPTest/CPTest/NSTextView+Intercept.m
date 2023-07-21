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
    Method pasteM = class_getInstanceMethod([NSTextView class], @selector(paste:));
    Method prePasteM = class_getInstanceMethod([NSTextView class], @selector(prePaste:));
    method_exchangeImplementations(pasteM, prePasteM);
    
    Method copyM = class_getInstanceMethod([NSTextView class], @selector(copy:));
    Method preCopyM = class_getInstanceMethod([NSTextView class], @selector(preCopy:));
    method_exchangeImplementations(copyM, preCopyM);
}

- (void)setPasteBlk:(BOOL (^)(id _Nonnull))pasteBlk {
    objc_setAssociatedObject(self, &pasteBlkKey, pasteBlk, OBJC_ASSOCIATION_COPY);
}

- (BOOL (^)(id _Nonnull))pasteBlk {
    return objc_getAssociatedObject(self, &pasteBlkKey);
}

- (void)prePaste:(id)sender {
    [self prePaste:sender];
    NSLog(@"%@", sender);
}

- (void)preCopy:(id)sender {
    [self preCopy:sender];
    NSLog(@"%@",sender);
}

@end
