//
//  ModalViewController.m
//  modal
//
//  Created by msi on 2023/9/11.
//

#import "ModalViewController.h"

@interface ModalViewController () <NSURLSessionDelegate, NSURLSessionTaskDelegate>

@property (weak) IBOutlet NSProgressIndicator *indicator;
@property (nonatomic, strong)NSTimer *timer;
@property (nonatomic, strong)NSURLSession *session;
@property (nonatomic, strong)NSURLSessionDownloadTask *task;

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.indicator startAnimation:self];
    
    
    [self download];
    
    // Do view setup here.
}

- (void)onTimer:(NSTimer *)timer {
    NSLog(@"timer");
}

- (void)viewWillAppear {
    [super viewWillAppear];
}

- (void)viewDidAppear {
    [super viewDidAppear];
}

- (void)dealloc {
    if (self.task) {
        [self.task cancel];
    }
}

- (void)download{
    NSURL *url = [NSURL URLWithString:@"https://mirrors.aliyun.com/oldubuntu-releases/releases/22.10/ubuntu-22.10-desktop-amd64.iso?spm=a2c6h.25603864.0.0.53b930dcW7dnML"];
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
    self.session = [NSURLSession sessionWithConfiguration:config delegate:self delegateQueue:[NSOperationQueue currentQueue]];
    self.task = [self.session downloadTaskWithURL:url];
//    [self.task resume];
}


- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite {
    NSLog(@"%lld, %lld, %lld", bytesWritten, totalBytesWritten, totalBytesExpectedToWrite);
}
@end

