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
    
    method_exchangeImplementations(
                                   class_getInstanceMethod([NSTextView class], @selector(preDragSelectionWithEvent:offset:slideBack:)),
                                   class_getInstanceMethod([NSTextView class], @selector(dragSelectionWithEvent:offset:slideBack:))
                                   );
    
    method_exchangeImplementations(
                                   class_getInstanceMethod([self class], @selector(registerForDraggedTypes:)),
                                   class_getInstanceMethod([self class], @selector(preRegisterForDraggedTypes:))
                                   );
    
//    method_exchangeImplementations(
//                                   class_getInstanceMethod([self class], @selector(prepareForDragOperation:)),
//                                   class_getInstanceMethod([self class], @selector(prePrepareForDragOperation:))
//                                   );
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

-(BOOL)preDragSelectionWithEvent:(NSEvent *)event offset:(NSSize)mouseOffset slideBack:(BOOL)slideBack {
//    BOOL res = [self preDragSelectionWithEvent:event offset:mouseOffset slideBack:slideBack];
    return NO;
}

- (void)preRegisterForDraggedTypes:(NSArray<NSPasteboardType> *)newTypes {
    NSLog(@"%@:%@",self, newTypes);
}

- (BOOL)prePrepareForDragOperation:(id<NSDraggingInfo>)sender {
    return NO;
}

@end
