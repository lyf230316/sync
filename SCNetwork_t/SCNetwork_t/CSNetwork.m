//
//  CSNetwork.m
//  SCNetwork_t
//
//  Created by msi on 2023/5/21.
//

#import "CSNetwork.h"
#import <CoreFoundation/CoreFoundation.h>
#import <SystemConfiguration/SCNetworkReachability.h>
#import <netinet/in.h>

@implementation CSNetwork

+ (BOOL) connectedToNetwork{
    NSString * domain = @"google.com";
    SCNetworkReachabilityRef defaultRouteReachability = SCNetworkReachabilityCreateWithName(kCFAllocatorDefault, [domain UTF8String]);
    SCNetworkReachabilityFlags flags;
    //获得连接的标志
    BOOL didRetrieveFlags = SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags);
    CFRelease(defaultRouteReachability);
    //如果不能获取连接标志，则不能连接网络，直接返回
    return didRetrieveFlags;
}

@end
