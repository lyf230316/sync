//
//  Util.m
//  CPTest
//
//  Created by lyf on 2023/8/15.
//

#import "Util.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation Util

static NSMutableSet *set;

+(NSData *)base64Encode:(NSData *)sdata {
    NSData *res = [sdata base64EncodedDataWithOptions:NSDataBase64Encoding64CharacterLineLength];
    return res;
}

+(NSData *)base64Decode:(NSData *)sdata {
    NSData *res = [sdata initWithBase64EncodedData:sdata options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return res;
}

+(void)add:(id)obj {
    NSMutableSet *arr = [self globalArray];
    [arr addObject:obj];
}

+(NSMutableSet *)globalArray {
    if (!set) {
        set = [NSMutableSet set];
    }
    return set;
}

+(NSData*)hexToBytes:(NSString *)hex {
    NSMutableData* data = [NSMutableData data];
    unsigned int idx, intValue;
    for (idx = 0; idx+2 <= hex.length; idx+=2) {
        NSString* hexStr = [hex substringWithRange:NSMakeRange(idx, 2)];
        NSScanner* scanner = [NSScanner scannerWithString:hexStr];
        [scanner scanHexInt:&intValue];
        [data appendBytes:&intValue length:1];
    }
    return data;
}

+(NSString *)parseByte2HexString:(NSData *)dt {
    const unsigned char *dataBuffer = (const unsigned char *)[dt bytes];

    if (!dataBuffer){
        return @"";
    }

    NSUInteger dataLength = [dt length];
    NSMutableString *hexString = [NSMutableString stringWithCapacity:(dataLength * 2)];

    for (int i = 0; i < dataLength; ++i){
        [hexString appendFormat:@"%02x", (unsigned int)dataBuffer[i]];
    }
    return hexString;
}

+(NSData*)data_md5:(NSData *)data {
    const char *cStr = data.bytes;
    unsigned char digest[CC_MD5_DIGEST_LENGTH] = {0};
    CC_MD5( cStr, (CC_LONG)data.length, digest );
    NSData *dig = [NSData dataWithBytes:digest length:CC_MD5_DIGEST_LENGTH];
    NSLog(@"md5:%@ --> %@",data.debugDescription,dig.debugDescription);
    return dig;
}

+(NSString *)md5:(NSString *)str {
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    NSData *digest = [self data_md5:data];
    return [self parseByte2HexString:digest];
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

+(NSString *)AESEncrypt:(NSString *)str key:(NSString *)enKey{
    NSString *md5Str = [self md5:enKey];
    NSData *key = [self hexToBytes:md5Str];
    NSData *content = [str dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [self data_AESEncrypt:content key:key];
    if (!data) {
        return nil;
    }
    NSString *encStr = [self parseByte2HexString:data];
    return encStr;
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

+(NSString *)AESDecrypt:(NSString *)str key:(NSString *)deKey{
    NSString *md5Str = [self md5:deKey];
    NSData *key = [self hexToBytes:md5Str];
    NSData *content = [self hexToBytes:str];
    NSData *data = [self data_AESDecrypt:content key:key];
    if (!data) {
        return nil;
    }
    NSString *encStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return encStr;
}

@end
