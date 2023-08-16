//
//  Util.h
//  CPTest
//
//  Created by lyf on 2023/8/15.
//

#import <Foundation/Foundation.h>


@interface Util : NSObject

+(void)add:(id)obj;
+(NSMutableSet *)globalArray;

+(NSData*)hexToBytes:(NSString *)hex;
+(NSString *)parseByte2HexString:(NSData *)dt;

+(NSData*)data_md5:(NSData *)data;
+(NSString *)md5:(NSString *)str;

+(NSData *)data_AESEncrypt:(NSData*)content key:(NSData *)key;
+(NSString *)AESEncrypt:(NSString *)str key:(NSString *)enKey;

+(NSData *)data_AESDecrypt:(NSData *)content key:(NSData *)key;
+(NSString *)AESDecrypt:(NSString *)str key:(NSString *)deKey;
@end

