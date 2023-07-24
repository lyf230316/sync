//
//  AppDelegate.m
//  CPTest
//
//  Created by msi on 2023/7/20.
//

#import "AppDelegate.h"
#import "Aspects.h"
#import <CoreFoundation/CoreFoundation.h>
#import <objc/runtime.h>

@interface AppDelegate ()


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    NSPasteboard *board = [NSPasteboard pasteboardWithName:NSPasteboardNameDrag];
    [board pasteboardItems];
    
    
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
    
//    [NSPasteboardItem aspect_hookSelector:@selector(init) withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo) {
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@",arguments);
//    } error:&error];
//    
//    [NSView aspect_hookSelector:@selector(beginDraggingSessionWithItems:event:source:) withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo) {
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@",arguments);
//    } error:&error];
//    
//    
//    [NSMenuItemCell aspect_hookSelector:NSSelectorFromString(@"setEnable:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@",arguments);
//    } error:&error];
//    
//    [NSClassFromString(@"WKMenuTarget") aspect_hookSelector:NSSelectorFromString(@"forwardContextMenuAction:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@",arguments);
//    } error:&error];
    
//    [NSClassFromString(@"$1") aspect_hookSelector:NSSelectorFromString(@"$2") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"$2");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
    
//    [NSPasteboard aspect_hookSelector:@selector(setData:forType:) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@",arguments);
//    } error:&error];
    
    
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"registerDragTypes:forWindow:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"registerDragTypes:forWindow:");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"unregisterDragTypesForWindow:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"unregisterDragTypesForWindow:");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"registerWindow:foriOSMacContext:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"registerWindow:foriOSMacContext:");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"dragImage:fromWindow:at:offset:event:pasteboard:source:slideBack:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"dragImage:fromWindow:at:offset:event:pasteboard:source:slideBack:");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"_dragUntilMouseUp:accepted:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"_dragUntilMouseUp:accepted:");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"registerForCompletionOfDrag:") withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"registerForCompletionOfDrag:");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"_dragLocalSource") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"_dragLocalSource");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"draggingSessionWithSequenceNumber:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"draggingSessionWithSequenceNumber:");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"unregisterWindow:foriOSMacContext:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"unregisterWindow:foriOSMacContext:");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"switchWindow:dragRegistrationToRemoteContext:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"switchWindow:dragRegistrationToRemoteContext:");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"slideImage:from:to:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"slideImage:from:to:");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"_setAlternateDragSource:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"_setAlternateDragSource:");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"_alternateDragSource") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"_alternateDragSource");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"beginDraggingSessionWithItems:fromWindow:withClipRect:event:source:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"beginDraggingSessionWithItems:fromWindow:withClipRect:event:source:");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"_registerFilePromiseDraggingEndedTarget:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"_registerFilePromiseDraggingEndedTarget:");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
//    [NSClassFromString(@"NSCoreDragManager") aspect_hookSelector:NSSelectorFromString(@"_cancelAllFilePromiseDrags") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"_cancelAllFilePromiseDrags");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
    
    
    
//    [NSDraggingSession aspect_hookSelector:@selector(init) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"init");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//    } error:&error];
    
//    [NSClassFromString(@"$1") aspect_hookSelector:NSSelectorFromString(@"$2") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"$2");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//        [invocation setReturnValue:@(NO)];
//    } error:&error];
    
//    [NSClassFromString(@"_NSFunctionRowCustomizationDragTarget") aspect_hookSelector:NSSelectorFromString(@"prepareForDragOperation:") withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"[_NSFunctionRowCustomizationDragTarget prepareForDragOperation:]");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//        BOOL res = NO;
//        [invocation setReturnValue:&res];
//    } error:&error];
//    [NSClassFromString(@"NSLocalSavePanel") aspect_hookSelector:NSSelectorFromString(@"prepareForDragOperation:") withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"[NSLocalSavePanel prepareForDragOperation:]");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//        BOOL res = NO;
//        [invocation setReturnValue:&res];
//    } error:&error];
//    [NSClassFromString(@"_NSSplitViewSpringLoadingView") aspect_hookSelector:NSSelectorFromString(@"prepareForDragOperation:") withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"[_NSSplitViewSpringLoadingView prepareForDragOperation:]");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//        BOOL res = NO;
//        [invocation setReturnValue:&res];
//    } error:&error];
//    [NSClassFromString(@"NSTextView") aspect_hookSelector:NSSelectorFromString(@"prepareForDragOperation:") withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"[NSTextView prepareForDragOperation:]");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//        BOOL res = NO;
//        [invocation setReturnValue:&res];
//    } error:&error];
//    [NSClassFromString(@"NSTokenField") aspect_hookSelector:NSSelectorFromString(@"prepareForDragOperation:") withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"[NSTokenField prepareForDragOperation:]");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//        BOOL res = NO;
//        [invocation setReturnValue:&res];
//    } error:&error];
//    [NSClassFromString(@"NSTabBarNewTabButton") aspect_hookSelector:NSSelectorFromString(@"prepareForDragOperation:") withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"[NSTabBarNewTabButton prepareForDragOperation:]");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//        BOOL res = NO;
//        [invocation setReturnValue:&res];
//    } error:&error];
//    [NSClassFromString(@"_NSCollectionViewDropReceiver") aspect_hookSelector:NSSelectorFromString(@"prepareForDragOperation:") withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"[_NSCollectionViewDropReceiver prepareForDragOperation:]");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//        BOOL res = NO;
//        [invocation setReturnValue:&res];
//    } error:&error];
//    [NSClassFromString(@"NSView") aspect_hookSelector:NSSelectorFromString(@"prepareForDragOperation:") withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"[NSView prepareForDragOperation:]");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//        BOOL res = NO;
//        [invocation setReturnValue:&res];
//    } error:&error];
//    [NSClassFromString(@"NSWindow") aspect_hookSelector:NSSelectorFromString(@"prepareForDragOperation:") withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"[NSWindow prepareForDragOperation:]");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//        BOOL res = NO;
//        [invocation setReturnValue:&res];
//    } error:&error];
//    [NSClassFromString(@"NSTabButton") aspect_hookSelector:NSSelectorFromString(@"prepareForDragOperation:") withOptions:AspectPositionInstead usingBlock:^(id<AspectInfo> aspectInfo){
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invocation = aspectInfo.originalInvocation;
//        NSLog(@"[NSTabButton prepareForDragOperation:]");
//        NSLog(@"%@",item);
//        NSLog(@"%@",invocation);
//        NSLog(@"%@\n",arguments);
//        BOOL res = NO;
//        [invocation setReturnValue:&res];
//    } error:&error];
    
    [NSClassFromString(@"NSView") aspect_hookSelector:NSSelectorFromString(@"_registerForDraggedTypes:later:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invocation = aspectInfo.originalInvocation;
        NSLog(@"[NSView _registerForDraggedTypes:later:]");
        NSLog(@"%@",item);
        NSLog(@"%@",invocation);
        NSLog(@"%@\n",arguments);
    } error:&error];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
