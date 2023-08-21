//
//  UIPasteboard+crypt.m
//  ios_cp_t
//
//  Created by lyf on 2023/8/21.
//

#import "UIPasteboard+crypt.h"
#import <objc/runtime.h>

@implementation UIPasteboard (crypt)

+(void)load {
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(setData:forPasteboardType:)),
                                   class_getInstanceMethod(self, @selector(ex_setData:forPasteboardType:)));
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(dataForPasteboardType:)),
                                   class_getInstanceMethod(self, @selector(ex_dataForPasteboardType:)));
}

- (void)ex_setData:(NSData *)data forPasteboardType:(NSString *)pasteboardType {
    NSLog(@"ex_setData:%@",data.debugDescription);
    [self ex_setData:[NSData data] forPasteboardType:pasteboardType];
}

- (NSData *)ex_dataForPasteboardType:(NSString *)pasteboardType {
    NSData *data = [self ex_dataForPasteboardType:pasteboardType];
    NSLog(@"ex_dataForPasteboardType:%@", data.debugDescription);
    return data;
}

@end
