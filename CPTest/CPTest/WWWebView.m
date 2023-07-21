//
//  WWWebView.m
//  CPTest
//
//  Created by msi on 2023/7/20.
//

#import "WWWebView.h"

@interface WKWebView ()
-(void)paste:(id)sender;
@end

@implementation WWWebView

- (WKNavigation *)loadRequest:(NSURLRequest *)request {
    NSLog(@"%@", request);
    return [super loadRequest:request];
}

- (void)paste:(id)sender {
    NSLog(@"%@",sender);
    [super paste:sender];
}

-(void)copy:(id)sender {
    NSLog(@"%@", sender);
}

@end
