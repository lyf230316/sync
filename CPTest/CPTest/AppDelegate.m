//
//  AppDelegate.m
//  CPTest
//
//  Created by msi on 2023/7/20.
//

#import "AppDelegate.h"
#import "Aspects.h"

@interface AppDelegate ()


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    NSString *fn = @"_corePerformAction";
    NSError * error = nil;
    
//    [NSMenuItem aspect_hookSelector:NSSelectorFromString(@"setTarget:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@",arguments);
//    } error:&error];
    
    [NSPasteboardItem aspect_hookSelector:@selector(init) withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invocation = aspectInfo.originalInvocation;
        NSLog(@"%@",item);
        NSLog(@"%@",invocation);
        NSLog(@"%@",arguments);
    } error:&error];
    
    [NSView aspect_hookSelector:@selector(beginDraggingSessionWithItems:event:source:) withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invocation = aspectInfo.originalInvocation;
        NSLog(@"%@",item);
        NSLog(@"%@",invocation);
        NSLog(@"%@",arguments);
    } error:&error];
    
    
    [NSMenuItemCell aspect_hookSelector:NSSelectorFromString(@"setEnable:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invocation = aspectInfo.originalInvocation;
        NSLog(@"%@",item);
        NSLog(@"%@",invocation);
        NSLog(@"%@",arguments);
    } error:&error];
    
    [NSClassFromString(@"WKMenuTarget") aspect_hookSelector:NSSelectorFromString(@"forwardContextMenuAction:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invocation = aspectInfo.originalInvocation;
        NSLog(@"%@",item);
        NSLog(@"%@",invocation);
        NSLog(@"%@",arguments);
    } error:&error];
    
//    [NSPasteboard aspect_hookSelector:@selector(setData:forType:) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@",arguments);
//    } error:&error];
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
