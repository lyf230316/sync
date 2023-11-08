//
//  ViewController.m
//  UIT
//
//  Created by lyf on 2023/9/20.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController () <WKNavigationDelegate>

@property (strong, nonatomic)WKWebView *webView;

@property (nonatomic, strong)NSString *commonString;
@property (weak) IBOutlet NSTextField *t1;
@property (weak) IBOutlet NSTextField *t2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.commonString = @"123";
    NSLog(@"%@", self.t1.exposedBindings);
    [self.t1 bind:@"value" toObject:self withKeyPath:@"commonString" options:nil];
    [self.t2 bind:@"value" toObject:self withKeyPath:@"commonString" options:nil];
    // Do any additional setup after loading the view.
}

- (void)initWebView{
    WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc]init];
    configuration.upgradeKnownHostsToHTTPS = NO;
    self.webView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, 0, 0) configuration:configuration];
    [self.view addSubview:self.webView];
    self.webView.translatesAutoresizingMaskIntoConstraints = NO;
    [[self.view.leftAnchor constraintEqualToAnchor:self.webView.leftAnchor] setActive:YES];
    [[self.view.bottomAnchor constraintEqualToAnchor:self.webView.bottomAnchor] setActive:YES];
    [[self.view.rightAnchor constraintEqualToAnchor:self.webView.rightAnchor] setActive:YES];
    [[self.view.topAnchor constraintEqualToAnchor:self.webView.topAnchor] setActive:YES];
    
    
    NSDate *dateFrom = [NSDate dateWithTimeIntervalSince1970:0];
    __weak typeof(self) weakSelf = self;
    [[WKWebsiteDataStore defaultDataStore] removeDataOfTypes:[WKWebsiteDataStore allWebsiteDataTypes] modifiedSince:dateFrom completionHandler:^{
        [weakSelf load];
    }];
    self.webView.configuration.upgradeKnownHostsToHTTPS = NO;
    [self.webView addObserver:self forKeyPath:@"URL" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)load{
    NSURL * url = [NSURL URLWithString:@"http://www.baidu.com"];
//    NSURL * url = [NSURL URLWithString:@"http://www.apple.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    self.webView.navigationDelegate = self;
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"%@, %@, %@", keyPath,object, change);
}

#pragma mark - WKNavigationDelegate

/*! @abstract Decides whether to allow or cancel a navigation.
 @param webView The web view invoking the delegate method.
 @param navigationAction Descriptive information about the action
 triggering the navigation request.
 @param decisionHandler The decision handler to call to allow or cancel the
 navigation. The argument is one of the constants of the enumerated type WKNavigationActionPolicy.
 @discussion If you do not implement this method, the web view will load the request or, if appropriate, forward it to another application.
 */
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    //NSLog(@"url:%@", webView.URL);
    decisionHandler(WKNavigationActionPolicyCancel);
}

/*! @abstract Decides whether to allow or cancel a navigation.
 @param webView The web view invoking the delegate method.
 @param navigationAction Descriptive information about the action
 triggering the navigation request.
 @param preferences The default set of webpage preferences. This may be
 changed by setting defaultWebpagePreferences on WKWebViewConfiguration.
 @param decisionHandler The policy decision handler to call to allow or cancel
 the navigation. The arguments are one of the constants of the enumerated type
 WKNavigationActionPolicy, as well as an instance of WKWebpagePreferences.
 @discussion If you implement this method,
 -webView:decidePolicyForNavigationAction:decisionHandler: will not be called.
 */
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction preferences:(WKWebpagePreferences *)preferences decisionHandler:(void (^)(WKNavigationActionPolicy, WKWebpagePreferences *))decisionHandler {
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    NSLog(@"url:%@", webView.URL);
    decisionHandler(WKNavigationActionPolicyAllow, preferences);
}

/*! @abstract Decides whether to allow or cancel a navigation after its
 response is known.
 @param webView The web view invoking the delegate method.
 @param navigationResponse Descriptive information about the navigation
 response.
 @param decisionHandler The decision handler to call to allow or cancel the
 navigation. The argument is one of the constants of the enumerated type WKNavigationResponsePolicy.
 @discussion If you do not implement this method, the web view will allow the response, if the web view can show it.
 */
- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler {
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    //NSLog(@"url:%@", webView.URL);
    decisionHandler(WKNavigationResponsePolicyAllow);
}

/*! @abstract Invoked when a main frame navigation starts.
 @param webView The web view invoking the delegate method.
 @param navigation The navigation.
 */
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(null_unspecified WKNavigation *)navigation{
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    NSLog(@"url:%@", webView.URL);
}

/*! @abstract Invoked when a server redirect is received for the main
 frame.
 @param webView The web view invoking the delegate method.
 @param navigation The navigation.
 */
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(null_unspecified WKNavigation *)navigation{
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    //NSLog(@"url:%@", webView.URL);
}

/*! @abstract Invoked when an error occurs while starting to load data for
 the main frame.
 @param webView The web view invoking the delegate method.
 @param navigation The navigation.
 @param error The error that occurred.
 */
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error{
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    //NSLog(@"url:%@", webView.URL);
}

/*! @abstract Invoked when content starts arriving for the main frame.
 @param webView The web view invoking the delegate method.
 @param navigation The navigation.
 */
- (void)webView:(WKWebView *)webView didCommitNavigation:(null_unspecified WKNavigation *)navigation{
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    //NSLog(@"url:%@", webView.URL);
}

/*! @abstract Invoked when a main frame navigation completes.
 @param webView The web view invoking the delegate method.
 @param navigation The navigation.
 */
- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation{
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    //NSLog(@"url:%@", webView.URL);
}

/*! @abstract Invoked when an error occurs during a committed main frame
 navigation.
 @param webView The web view invoking the delegate method.
 @param navigation The navigation.
 @param error The error that occurred.
 */
- (void)webView:(WKWebView *)webView didFailNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error{
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    //NSLog(@"url:%@", webView.URL);
}

/*! @abstract Invoked when the web view needs to respond to an authentication challenge.
 @param webView The web view that received the authentication challenge.
 @param challenge The authentication challenge.
 @param completionHandler The completion handler you must invoke to respond to the challenge. The
 disposition argument is one of the constants of the enumerated type
 NSURLSessionAuthChallengeDisposition. When disposition is NSURLSessionAuthChallengeUseCredential,
 the credential argument is the credential to use, or nil to indicate continuing without a
 credential.
 @discussion If you do not implement this method, the web view will respond to the authentication challenge with the NSURLSessionAuthChallengeRejectProtectionSpace disposition.
 */
- (void)webView:(WKWebView *)webView didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential * _Nullable credential))completionHandler{
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    //NSLog(@"url:%@", webView.URL);
    completionHandler(NSURLSessionAuthChallengeRejectProtectionSpace, nil);
}

/*! @abstract Invoked when the web view's web content process is terminated.
 @param webView The web view whose underlying web content process was terminated.
 */
- (void)webViewWebContentProcessDidTerminate:(WKWebView *)webView{
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    //NSLog(@"url:%@", webView.URL);
}

/*! @abstract Invoked when the web view is establishing a network connection using a deprecated version of TLS.
 @param webView The web view initiating the connection.
 @param challenge The authentication challenge.
 @param decisionHandler The decision handler you must invoke to respond to indicate whether or not to continue with the connection establishment.
 */
- (void)webView:(WKWebView *)webView authenticationChallenge:(NSURLAuthenticationChallenge *)challenge shouldAllowDeprecatedTLS:(void (^)(BOOL))decisionHandler {
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    //NSLog(@"url:%@", webView.URL);
}

/*
 @abstract Called after using WKNavigationActionPolicyDownload.
 @param webView The web view that created the download.
 @param navigationAction The action that is being turned into a download.
 @param download The download.
 @discussion The download needs its delegate to be set to receive updates about its progress.
*/
- (void)webView:(WKWebView *)webView navigationAction:(WKNavigationAction *)navigationAction didBecomeDownload:(WKDownload *)download{
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    //NSLog(@"url:%@", webView.URL);
}

/*
 @abstract Called after using WKNavigationResponsePolicyDownload.
 @param webView The web view that created the download.
 @param navigationResponse The response that is being turned into a download.
 @param download The download.
 @discussion The download needs its delegate to be set to receive updates about its progress.
*/
- (void)webView:(WKWebView *)webView navigationResponse:(WKNavigationResponse *)navigationResponse didBecomeDownload:(WKDownload *)download{
    NSLog(@"%@,%@",[NSString stringWithUTF8String:__FUNCTION__],@(__LINE__));
    //NSLog(@"url:%@", webView.URL);
}

@end
