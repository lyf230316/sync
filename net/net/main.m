//
//  main.m
//  net
//
//  Created by lyf on 2023/6/12.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSLog(@"%d",kCFStreamErrorDomainSSL);
        NSLog(@"%s",kCFErrorDomainCFNetwork);
        NSLog(@"%d",kCFURLErrorSecureConnectionFailed);
        NSLog(@"%s",kCFNetworkProxiesHTTPProxy);
    }
    return 0;
}
