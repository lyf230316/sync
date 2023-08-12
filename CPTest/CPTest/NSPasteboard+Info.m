//
//  NSPasteboard+Info.m
//  CPTest
//
//  Created by lyf on 2023/8/11.
//

#import "NSPasteboard+Info.h"
#import <objc/runtime.h>

@implementation NSPasteboard (Info)

+ (void)load {
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(setData:forType:)),
                                   class_getInstanceMethod(self, @selector(ex_setData:forType:)));
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(dataForType:)),
                                   class_getInstanceMethod(self, @selector(ex_dataForType:)));
    method_exchangeImplementations(class_getInstanceMethod(self, NSSelectorFromString(@"_dataForType:index:usesPboardTypes:combinesItems:securityScoped:")),
                                   class_getInstanceMethod(self, @selector(ex__dataForType:index:usesPboardTypes:combinesItems:securityScoped:)));
}

- (BOOL)ex_setData:(NSData *)data forType:(NSPasteboardType)dataType{
    NSLog(@"setdata:%@",data);
    return [self ex_setData:data forType:dataType];
}

- (NSData *)ex_dataForType:(NSPasteboardType)dataType {
    NSData *data = [self ex_dataForType:dataType];
    return data;
}

- (NSData *)ex__dataForType:(NSString *)type index:(NSInteger)index usesPboardTypes:(NSArray*)types combinesItems:(NSArray *)items securityScoped:(NSInteger)scoped {
    NSData *data = [self ex__dataForType:type index:index usesPboardTypes:types combinesItems:items securityScoped:scoped];
    return data;
}

@end
