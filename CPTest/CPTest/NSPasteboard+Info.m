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
//    method_exchangeImplementations(class_getInstanceMethod(self, @selector(setString:forType:)),
//                                   class_getInstanceMethod(self, @selector(ex_setString:forType:)));
//    method_exchangeImplementations(class_getInstanceMethod(self, @selector(readObjectsForClasses:options:)),
//                                   class_getInstanceMethod(self, @selector(ex_readObjectsForClasses:options:)));
//    method_exchangeImplementations(class_getInstanceMethod(self, @selector(stringForType:)),
//                                   class_getInstanceMethod(self, @selector(ex_stringForType:)));
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(setData:forType:)),
                                   class_getInstanceMethod(self, @selector(ex_setData:forType:)));
    method_exchangeImplementations(class_getInstanceMethod(self, NSSelectorFromString(@"_dataForType:index:usesPboardTypes:combinesItems:securityScoped:")),
                                   class_getInstanceMethod(self, @selector(ex__dataForType:index:usesPboardTypes:combinesItems:securityScoped:)));
//    method_exchangeImplementations(class_getInstanceMethod(self, @selector(dataForType:)),
//                                   class_getInstanceMethod(self, @selector(ex_dataForType:)));
}

- (BOOL)ex_setString:(NSString *)string forType:(NSPasteboardType)dataType {
    [Util add:self];
    NSLog(@"ex_setString:%@ forType:%@",string,dataType);
    return [self ex_setString:[self Encrypt:string] forType:dataType];
}

-(BOOL)ex_setData:(NSData *)data forType:(NSPasteboardType)dataType {
    [Util add:self];
    NSLog(@"ex_setData:%@ forType:%@",[data debugDescription],dataType);
    return [self ex_setData:[self data_encrypt:data] forType:dataType];
}

-(NSData *)ex__dataForType:(NSString *)arg1 index:(unsigned long long)arg2 usesPboardTypes:(BOOL)arg3 combinesItems:(BOOL)arg4 securityScoped:(BOOL)arg5 {
    NSData *res = [self ex__dataForType:arg1 index:arg2 usesPboardTypes:arg3 combinesItems:arg4 securityScoped:arg5];
    res = [self data_decrypt:res];
    return res;
}

- (NSData *)ex_dataForType:(NSPasteboardType)dataType {
    [Util add:self];
    NSLog(@"ex_dataForType:%@", dataType);
    NSData *data = [self ex_dataForType:dataType];
    return [self data_decrypt:data];
}

- (NSArray *)ex_readObjectsForClasses:(NSArray<Class> *)classArray options:(NSDictionary<NSPasteboardReadingOptionKey,id> *)options {
    [Util add:self];
    NSLog(@"ex_readObjectsForClasses:%@  options:%@", classArray, options);
    NSArray *res = [self ex_readObjectsForClasses:classArray options:options];
    NSMutableArray *mres = [NSMutableArray array];
    for (id item in res) {
        if ([item isKindOfClass:[NSString class]]) {
            [mres addObject:[self Decrypt:item]];
        } else {
            [mres addObject:item];
        }
    }
    return mres;
}

- (NSString *)ex_stringForType:(NSPasteboardType)dataType {
    [Util add:self];
    NSLog(@"ex_stringForType:%@", dataType);
    NSString *res = [self ex_stringForType:dataType];
    return [self Decrypt:res];
}

#pragma mark - 加密解密

- (NSData *)data_encrypt:(NSData *)data {
    NSData *key = [Util data_md5:[AESKEY dataUsingEncoding:NSUTF8StringEncoding]];
    NSData *msg = [Util data_AESEncrypt:data key:key];
    NSData *md5 = [Util data_md5:msg];
    NSData *md5Aes = [Util data_AESEncrypt:md5 key:key];
    NSLog(@"\ndata:%@\nkey:%@\nmsg:%@\nmd5:%@\nmd5aes:%@\n",
          data.debugDescription,
          key.debugDescription,
          msg.debugDescription,
          md5.debugDescription,
          md5Aes.debugDescription
          );
    NSMutableData *res = [NSMutableData data];
    [res appendData:msg];
    [res appendData:md5Aes];
    NSString *bs = [Util parseByte2HexString:res];
    return [bs dataUsingEncoding:NSUTF8StringEncoding];
}

- (NSData *)data_decrypt:(NSData *)bsdata {
    NSString *bs = [[NSString alloc]initWithData:bsdata encoding:NSUTF8StringEncoding];
    if (!bs) {
        return bsdata;
    }
    NSData *data = [Util hexToBytes:bs];
    if (!data) {
        return bsdata;
    }
    if (data.length <= 32) {
        return bsdata;
    }
    NSData *key = [Util data_md5:[AESKEY dataUsingEncoding:NSUTF8StringEncoding]];
    NSData *md5Aes = [NSData dataWithBytes:data.bytes+data.length-32 length:32];
    NSData *md5 = [Util data_AESDecrypt:md5Aes key:key];
    if (!md5) {
        return bsdata;
    }
    NSData *msg = [NSData dataWithBytes:data.bytes length:data.length-32];
    NSData *msgMd5 = [Util data_md5:msg];
    if (!msgMd5) {
        return bsdata;
    }
    if (![md5 isEqualToData:msgMd5]) {
        return bsdata;
    }
    NSData *omsg = [Util data_AESDecrypt:msg key:key];
    if (!omsg) {
        return bsdata;
    }
    return omsg;
}

- (NSString *)Encrypt:(NSString *)string {
    NSString *msg = [Util AESEncrypt:string key:AESKEY];
    NSString *md5 = [Util md5:msg];
    NSString *md5aes = [Util AESEncrypt:md5 key:AESKEY];
    return [msg stringByAppendingFormat:@":%@",md5aes];
}

- (NSString *)Decrypt:(NSString *)string {
    NSArray *arr = [string componentsSeparatedByString:@":"];
    if (arr.count != 2) {
        return string;
    }
    NSString *msg = arr.firstObject;
    NSString *md5Aes = arr.lastObject;
    if (msg.length == 0 || md5Aes.length == 0) {
        return string;
    }
    NSString *md5 = [Util AESDecrypt:md5Aes key:AESKEY];
    if (!md5) {
        return string;
    }
    NSString *msgMd5 = [Util md5:msg];
    if (![md5 isEqualToString:msgMd5]) {
        return string;
    }
    NSString *dec = [Util AESDecrypt:msg key:AESKEY];
    if (dec) {
        return dec;
    } else {
        return string;
    }
}

@end
