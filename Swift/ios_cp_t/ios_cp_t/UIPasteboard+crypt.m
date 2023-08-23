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
//    Class cls = [self generalPasteboard].class;
//    method_exchangeImplementations(class_getInstanceMethod(cls, @selector(setString:)),
//                                   class_getInstanceMethod(self, @selector(ex_setString:)));
//    method_exchangeImplementations(class_getInstanceMethod(cls, @selector(setData:forPasteboardType:)),
//                                   class_getInstanceMethod(self, @selector(ex_setData:forPasteboardType:)));
//    method_exchangeImplementations(class_getInstanceMethod(cls, @selector(dataForPasteboardType:)),
//                                   class_getInstanceMethod(self, @selector(ex_dataForPasteboardType:)));
}

- (void)ex_setString:(NSString *)string {
    NSLog(@"%@", string);
    [self ex_setString:string];
}

- (void)ex_setData:(NSData *)data forPasteboardType:(NSString *)pasteboardType {
    NSLog(@"ex_setData:%@",data.debugDescription);
    NSData *ndata = [NSData data];
    [self ex_setData:ndata forPasteboardType:pasteboardType];
}

- (NSData *)ex_dataForPasteboardType:(NSString *)pasteboardType {
    NSData *data = [self ex_dataForPasteboardType:pasteboardType];
    NSLog(@"ex_dataForPasteboardType:%@", data.debugDescription);
    return data;
}

@end
