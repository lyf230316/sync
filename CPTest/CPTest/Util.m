//
//  Util.m
//  CPTest
//
//  Created by lyf on 2023/8/15.
//

#import "Util.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation Util

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

+(NSString *)md5:(NSString *)str {
    const char *cStr = [str UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5( cStr, (uint32_t)strlen(cStr), digest );
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];
    
    return output;
}

+(NSString *)AESEncrypt:(NSString *)str key:(NSString *)enKey{
    
    NSString *md5Str = [self md5:enKey];
    NSData *key = [self hexToBytes:md5Str];
    NSData *content = [str dataUsingEncoding:NSUTF8StringEncoding];
    
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
        NSString *encStr = [self parseByte2HexString:data];
        return encStr;
    }
    return @"";
}

+(NSString *)AESDecrypt:(NSString *)str key:(NSString *)deKey{
    NSString *md5Str = [self md5:deKey];
    NSData *key = [self hexToBytes:md5Str];
    NSData *content = [self hexToBytes:str];
    
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
        NSString *encStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];//parseByte2HexString(data);
        return encStr;
    }
    return @"";
}

@end
