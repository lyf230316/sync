//
//  NSPasteboard+Info.m
//  CPTest
//
//  Created by lyf on 2023/8/11.
//

#import "NSPasteboard+Info.h"
#import <objc/runtime.h>
#import "Util.h"

#define AESKEY @"aesKey"

@implementation NSPasteboard (Info)

+ (void)load {
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(setString:forType:)),
                                   class_getInstanceMethod(self, @selector(ex_setString:forType:)));
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(readObjectsForClasses:options:)),
                                   class_getInstanceMethod(self, @selector(ex_readObjectsForClasses:options:)));
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(stringForType:)),
                                   class_getInstanceMethod(self, @selector(ex_stringForType:)));
}

- (BOOL)ex_setString:(NSString *)string forType:(NSPasteboardType)dataType {
    return [self ex_setString:[Util AESEncrypt:string key:AESKEY] forType:dataType];
}

- (NSArray *)ex_readObjectsForClasses:(NSArray<Class> *)classArray options:(NSDictionary<NSPasteboardReadingOptionKey,id> *)options {
    NSArray *res = [self ex_readObjectsForClasses:classArray options:options];
    NSMutableArray *mres = [NSMutableArray array];
    for (id item in res) {
        if ([item isKindOfClass:[NSString class]]) {
            [mres addObject:[Util AESDecrypt:item key:AESKEY]];
        } else {
            [mres addObject:item];
        }
    }
    return mres;
}

- (NSString *)ex_stringForType:(NSPasteboardType)dataType {
    NSString *res = [self ex_stringForType:dataType];
    return [Util AESDecrypt:res key:AESKEY];
}

@end
