//
//  main.m
//  urlTest
//
//  Created by lyf on 2023/6/26.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *urlStr = @"https://assets-offline.4paradigm.com/2023-06-22/8215ae531df94bfbb1bd2d371373166a_补充的ACN-李航模板（改） (1).xlsx?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDjKjwxkIbibFguwj2DCxYxCLRPQHwOeor%26q-sign-time%3D1687760071%3B1687761871%26q-key-time%3D1687760071%3B1687761871%26q-header-list%3Dhost%26q-url-param-list%3Dresponse-expires%3Btoken%26q-signature%3Dec731b45ec404c041083b15df07ca98d6b2c00cd&response-expires=Mon%2C%2026%20Jun%202023%2006%3A44%3A31%20GMT&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2ODgzNjQ4NTgsImlhdCI6MTY4Nzc2MDA1OCwidXNlcm5hbWUiOiJiaXp0ZXN0MDYifQ.APXrfqaowJ7lnoT7CHpnOzgptyWTg75wtQBbDwO5QNo?sign=q-sign-algorithm%3Dsha1%26q-ak%3DAKIDjKjwxkIbibFguwj2DCxYxCLRPQHwOeor%26q-sign-time%3D1687760071%3B1687761871%26q-key-time%3D1687760071%3B1687761871%26q-header-list%3Dhost%26q-url-param-list%3Dresponse-expires%3Btoken%26q-signature%3D5c279c03b9543da201f198b06c4f08a997c5fd63&response-expires=Mon%2C%2026%20Jun%202023%2006%3A44%3A31%20GMT&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2ODgzNjQ4NTgsImlhdCI6MTY4Nzc2MDA1OCwidXNlcm5hbWUiOiJiaXp0ZXN0MDYifQ.APXrfqaowJ7lnoT7CHpnOzgptyWTg75wtQBbDwO5QNo";
        NSURL * url = [NSURL URLWithString:urlStr];
        if(!url){
            NSString* _urlStr = [urlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
            url = [NSURL URLWithString:_urlStr];
        }
        NSLog(@"%@",url.absoluteString);
        NSLog(@"Hello, World!");
    }
    return 0;
}
