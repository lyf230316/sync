//
//  CryptoUtil.m
//  RSA
//
//  Created by lyf on 2023/9/18.
//

#import "CryptoUtil.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation CryptoUtil

+(NSData *)md5:(NSData *)data {
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

@end
