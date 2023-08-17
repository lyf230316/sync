//
//  NSTextView+CP.m
//  TextView
//
//  Created by lyf on 2023/8/17.
//

#import "NSTextView+CP.h"
#import <objc/runtime.h>
#import "Util.h"

@implementation NSTextView (CP)


+(NSMutableDictionary *)gdic {
    static NSMutableDictionary *dic = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dic = [NSMutableDictionary dictionary];
    });
    return dic;
}

+ (void)load {
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(copy:)),
                                   class_getInstanceMethod(self, @selector(ex_copy:)));
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(cut:)),
                                   class_getInstanceMethod(self, @selector(ex_cut:)));
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(paste:)),
                                   class_getInstanceMethod(self, @selector(ex_paste:)));
}

- (void)ex_copy:(id)sender {
    [self ex_copy:sender];
    [NSTextView encryptBoard];
}

- (void)ex_cut:(id)sender {
    [NSTextView decryptBoard];
    [self ex_cut:sender];
}

- (void)ex_paste:(id)sender {
    [NSTextView decryptBoard];
    [self ex_paste:sender];
    [NSTextView encryptBoard];
}

+(void)encryptBoard {
    NSPasteboard *board = [NSPasteboard generalPasteboard];
    if ([board.types containsObject:NSPasteboardTypeString]) {
        NSString *str = [board stringForType:NSPasteboardTypeString];
        [board clearContents];
        NSMutableDictionary *gdic = [NSTextView gdic];
        [gdic removeAllObjects];
        NSString *md5 = [Util md5:str];
        gdic[md5] = str;
        [board setString:md5 forType:NSPasteboardTypeString];
    }
}

+(void)decryptBoard {
    NSPasteboard *board = [NSPasteboard generalPasteboard];
    if ([board.types containsObject:NSPasteboardTypeString]) {
        NSString *md5 = [board stringForType:NSPasteboardTypeString];
        NSMutableDictionary *gdic = [NSTextView gdic];
        NSString *str = gdic[md5];
        if (!str) {
            return;
        }
        [board clearContents];
        [board setString:str forType:NSPasteboardTypeString];
    }
}

@end
