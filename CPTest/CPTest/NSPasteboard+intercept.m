//
//  NSPasteboard+intercept.m
//  CPTest
//
//  Created by lyf on 2023/7/22.
//

#import "NSPasteboard+intercept.h"
#import <objc/runtime.h>

@implementation NSPasteboard (intercept)

+ (void)load {
//    method_exchangeImplementations(
//                                   class_getInstanceMethod([self class], @selector(pasteboardItems)),
//                                   class_getInstanceMethod([self class], @selector(prePasteboardItems))
//                                   );
//    
//    method_exchangeImplementations(
//                                   class_getInstanceMethod([self class], @selector(setData:forType:)),
//                                   class_getInstanceMethod([self class], @selector(preSetData:forType:))
//                                   );
}

- (BOOL)preSetData:(NSData *)data forType:(NSPasteboardType)dataType {
    return NO;
}

- (NSArray<NSPasteboardItem *> *)prePasteboardItems {
    return [NSArray array];
}

@end
