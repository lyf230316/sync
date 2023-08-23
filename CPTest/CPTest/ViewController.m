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
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear {
    [super viewDidAppear];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://cn.bing.com"]]];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}
- (IBAction)export:(id)sender {
}

@end
