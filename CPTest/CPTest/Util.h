//
//  Util.h
//  CPTest
//
//  Created by lyf on 2023/8/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Util : NSObject
+(NSData*)hexToBytes:(NSString *)hex;
+(NSString *)parseByte2HexString:(NSData *)dt;
+(NSString *)md5:(NSString *)str;
+(NSString *)AESEncrypt:(NSString *)str key:(NSString *)enKey;
+(NSString *)AESDecrypt:(NSString *)str key:(NSString *)deKey;
@end

NS_ASSUME_NONNULL_END
