//
//  NSPasteboard+Ctg.m
//  CopyTest
//
//  Created by lyf on 2023/8/17.
//

#import "NSPasteboard+Ctg.h"
#import <objc/runtime.h>

@implementation NSPasteboard (Ctg)

+(void)load {
    method_exchangeImplementations(class_getClassMethod(self, @selector(generalPasteboard)),
                                   class_getClassMethod(self, @selector(ex_generalPasteboard)));
    method_exchangeImplementations(class_getClassMethod(self, @selector(pasteboardWithName:)),
                                   class_getClassMethod(self, @selector(ex_pasteboardWithName:)));
}

+ (NSPasteboard *)ex_generalPasteboard {
    NSPasteboard *board = [self ex_generalPasteboard];
    NSLog(@"%@",board);
    return [self pasteboardWithName:board.name];
}

+ (NSPasteboard *)ex_pasteboardWithName:(NSPasteboardName)name {
    if (![name hasPrefix:@"private "]) {
        name = [@"private " stringByAppendingString:name];
    }
    NSLog(@"ex_pasteboardWithName:%@",name);
    NSPasteboard *board = [self ex_pasteboardWithName:name];
    NSLog(@"board:%@",board);
    return board;
}

@end
