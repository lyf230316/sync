//
//  ViewController.m
//  CPTest
//
//  Created by msi on 2023/7/20.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
#import "Util.h"
 
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
- (IBAction)export:(id)sender {
    NSMutableDictionary * plist = [NSMutableDictionary dictionary];
    NSMutableSet *set = [Util globalArray];
    for (NSPasteboard *board in set) {
        NSMutableArray *items = [NSMutableArray array];
        for (NSPasteboardItem *item in board.pasteboardItems) {
            NSMutableDictionary *types = [NSMutableDictionary dictionary];
            for (NSString *type in item.types) {
                NSMutableDictionary *dic = [NSMutableDictionary dictionary];
                NSData *data = [item dataForType:type];
                if (data) {
                    dic[@"data"] = data;
                }
                NSString *str = [item stringForType:type];
                if (str) {
                    dic[@"string"] = str;
                }
                id pl = [item propertyListForType:type];
                if (pl) {
                    dic[@"propertyList"] = pl;
                }
                types[type] = dic;
            }
            [items addObject:types];
        }
        plist[board.name] = items;
    }
    [plist writeToFile:@"/Users/lyf/git/github/sync/CPTest/CPTest/pasteboard.plist" atomically:YES];
}

@end
