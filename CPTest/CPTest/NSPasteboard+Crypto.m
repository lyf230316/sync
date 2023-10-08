//
//  NSPasteboard+Crypto.m
//  CPTest
//
//  Created by lyf on 2023/8/11.
//

#import "NSPasteboard+Crypto.h"
#import <objc/runtime.h>
#import <CommonCrypto/CommonCrypto.h>

#define AESKEY @"aesKey"

@implementation NSPasteboard (Crypto)

+ (void)load {
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(setData:forType:)),
                                   class_getInstanceMethod(self, @selector(ex_setData:forType:)));
    method_exchangeImplementations(class_getInstanceMethod(self, NSSelectorFromString(@"_setData:forType:index:usesPboardTypes:")),
                                   class_getInstanceMethod(self, @selector(ex__setData:forType:index:usesPboardTypes:)));
    method_exchangeImplementations(class_getInstanceMethod(self, NSSelectorFromString(@"_dataForType:index:usesPboardTypes:combinesItems:securityScoped:")),
                                   class_getInstanceMethod(self, @selector(ex__dataForType:index:usesPboardTypes:combinesItems:securityScoped:)));
}

-(BOOL)ex_setData:(NSData *)data forType:(NSPasteboardType)dataType {
    NSLog(@"\n[NSPasteboard ex_setData:%@ forType:%@]",[data debugDescription],dataType);
    return [self ex_setData:[NSPasteboard data_encrypt:data] forType:dataType];
}

- (BOOL)ex__setData:(NSData *)data forType:(NSString *)type index:(unsigned long long)index usesPboardTypes:(BOOL)usesPboardTypes {
    NSLog(@"\n[NSPasteboard ex_setData:%@ forType:%@]",[data debugDescription],type);
    BOOL res = [self ex__setData:data forType:type index:index usesPboardTypes:usesPboardTypes];
    return res;
}

-(NSData *)ex__dataForType:(NSString *)type index:(unsigned long long)index usesPboardTypes:(BOOL)usesPboardTypes combinesItems:(BOOL)combinesItems securityScoped:(BOOL)securityScoped {
    NSData *res = [self ex__dataForType:type index:index usesPboardTypes:usesPboardTypes combinesItems:combinesItems securityScoped:securityScoped];
    NSLog(@"\n[NSPasteboard ex__dataForType:%@ index:%@ usesPboardTypes:%@ combinesItems:%@ securityScoped:%@] ---> %@",
          type,
          @(index),
          @(usesPboardTypes),
          @(combinesItems),
          @(securityScoped),
          res.debugDescription);
    res = [NSPasteboard data_decrypt:res];
    return res;
}

#pragma mark - 加密解密

+ (NSData *)aesKey {
    static NSData *key = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        key = [NSPasteboard data_md5:[AESKEY dataUsingEncoding:NSUTF8StringEncoding]];
    });
    return key;
}

+ (NSData *)data_encrypt:(NSData *)data {
    NSData *key = [NSPasteboard aesKey];
    NSData *msg = [NSPasteboard data_AESEncrypt:data key:key];
    NSData *md5 = [NSPasteboard data_md5:msg];
    NSData *md5Aes = [NSPasteboard data_AESEncrypt:md5 key:key];
//    NSLog(@"\ndata:%@\nkey:%@\nmsg:%@\nmd5:%@\nmd5aes:%@\n",
//          data.debugDescription,
//          key.debugDescription,
//          msg.debugDescription,
//          md5.debugDescription,
//          md5Aes.debugDescription
//          );
    NSMutableData *res = [NSMutableData data];
    [res appendData:msg];
    [res appendData:md5Aes];
    NSData *bs = [res base64EncodedDataWithOptions:NSDataBase64Encoding64CharacterLineLength];
    return bs;
}

+ (NSData *)data_decrypt:(NSData *)bsdata {
    NSData *data = [[NSData alloc]initWithBase64EncodedData:bsdata options:NSDataBase64DecodingIgnoreUnknownCharacters];
    if (!data) {
        return bsdata;
    }
    if (data.length <= 32) {
        return bsdata;
    }
    NSData *key = [NSPasteboard aesKey];
    NSData *md5Aes = [NSData dataWithBytes:data.bytes+data.length-32 length:32];
    NSData *md5 = [NSPasteboard data_AESDecrypt:md5Aes key:key];
    if (!md5) {
        return bsdata;
    }
    NSData *msg = [NSData dataWithBytes:data.bytes length:data.length-32];
    NSData *msgMd5 = [NSPasteboard data_md5:msg];
    if (!msgMd5) {
        return bsdata;
    }
    if (![md5 isEqualToData:msgMd5]) {
        return bsdata;
    }
    NSData *omsg = [NSPasteboard data_AESDecrypt:msg key:key];
    if (!omsg) {
        return bsdata;
    }
    return omsg;
}

+(NSData*)data_md5:(NSData *)data {
    const char *cStr = data.bytes;
    unsigned char digest[CC_MD5_DIGEST_LENGTH] = {0};
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    CC_MD5( cStr, (CC_LONG)data.length, digest );
    NSData *dig = [NSData dataWithBytes:digest length:CC_MD5_DIGEST_LENGTH];
#pragma clang diagnostic pop
//    NSLog(@"md5:%@ --> %@",data.debugDescription,dig.debugDescription);
    return dig;
}

+(NSData * )data_AESEncrypt:(NSData*)content key:(NSData *)key {
    size_t bufferSize = content.length + kCCBlockSizeAES128;
    void *buffer = malloc( bufferSize );
    size_t numBytesEncrypted = 0;
    
    CCCryptorStatus result;
    result = CCCrypt(kCCEncrypt, kCCAlgorithmAES128,
                     kCCOptionECBMode | kCCOptionPKCS7Padding,
                     key.bytes, key.length,NULL,
                     content.bytes, content.length,
                     buffer, bufferSize,
                     &numBytesEncrypted);
    if(result == kCCSuccess){
        NSData *data = [NSData dataWithBytesNoCopy:buffer length:numBytesEncrypted];
        return data;
    }
    return nil;
}

+(NSData *)data_AESDecrypt:(NSData *)content key:(NSData *)key {
    size_t bufferSize = content.length + kCCBlockSizeAES128;
    void *buffer = malloc( bufferSize );
    size_t numBytesEncrypted = 0;
    
    CCCryptorStatus result;
    result = CCCrypt(kCCDecrypt, kCCAlgorithmAES128,
                     kCCOptionECBMode | kCCOptionPKCS7Padding,
                     key.bytes, key.length,NULL,
                     content.bytes, content.length,
                     buffer, bufferSize,
                     &numBytesEncrypted);
    if(result == kCCSuccess){
        NSData *data = [NSData dataWithBytesNoCopy:buffer length:numBytesEncrypted];
        return data;
    }
    return nil;
}

@end
