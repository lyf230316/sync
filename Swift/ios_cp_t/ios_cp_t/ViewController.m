//
//  ViewController.m
//  ios_cp_t
//
//  Created by lyf on 2023/8/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://cn.bing.com"]]];
    
    [NSNotificationCenter.defaultCenter addObserverForName:UIPasteboardChangedNotification object:nil queue:NSOperationQueue.mainQueue usingBlock:^(NSNotification * _Nonnull note) {
        NSLog(@"%@", note);
        UIPasteboard *board = note.object;
        NSLog(@"board:%@", [board string]);
    }];
    // Do any additional setup after loading the view.
}

@end
