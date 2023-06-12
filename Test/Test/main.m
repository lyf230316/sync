//
//  main.m
//  Test
//
//  Created by lyf on 2023/6/8.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSString *urlStr = @"https://www.qingzhouim.com/xpc/oauth2/authorize?appid=hiXXLcEbEnhNKfBfmr&redirect_uri=https://bizai-assistant-fat.4paradigm.com/&hi_tab=true&hi_backforward=true&hi_more=0&hi_navi_style=2";
        NSURLComponents *ncs = [NSURLComponents componentsWithString:urlStr];
        NSLog(@"%@", ncs);
        
        
    }
    return 0;
}
