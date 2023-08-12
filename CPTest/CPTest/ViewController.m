//
//  ViewController.m
//  CPTest
//
//  Created by msi on 2023/7/20.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
 
@interface ViewController ()<WKUIDelegate, WKNavigationDelegate>

@property (weak) IBOutlet WKWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView.UIDelegate = self;
    self.webView.navigationDelegate = self;
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://cn.bing.com"]]];
    
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
