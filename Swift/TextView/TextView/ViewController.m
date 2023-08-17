//
//  ViewController.m
//  TextView
//
//  Created by lyf on 2023/8/17.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)viewDidAppear {
    [super viewDidAppear];
    [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://cn.bing.com"]]];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
