//
//  AppDelegate.m
//  ios_cp_t
//
//  Created by lyf on 2023/8/21.
//

#import "AppDelegate.h"
#import "Aspects.h"
#import <objc/runtime.h>
#import "AOPTool.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    NSLog(@"%@",[UIPasteboard generalPasteboard]);
//    [self pasteboardAop];
//    [self uipasteboardAop];
//    [self pbitemAop];
    
    UIPasteboard *board = [UIPasteboard generalPasteboard];
    Class cls = board.class;
    
    [AOPTool addAOP:cls block:^(NSString * _Nonnull methodName, id<AspectInfo>  _Nonnull info) {
        NSString * clsName = NSStringFromClass(cls);
        NSLog(@"==================\n[%@ %@]\n%@",clsName, methodName,info.arguments.debugDescription);
    }];
    
    [AOPTool addAOPToClass:NSClassFromString(@"PBItem") block:^(NSString * _Nonnull methodName, id<AspectInfo>  _Nonnull info) {
        NSString * clsName = NSStringFromClass(cls);
        NSLog(@"==================\n[%@ %@]\n%@",clsName, methodName,info.arguments.debugDescription);
    }];
    
    [AOPTool addAOP:NSClassFromString(@"PBItem") block:^(NSString * _Nonnull methodName, id<AspectInfo>  _Nonnull info) {
        NSString * clsName = NSStringFromClass(cls);
        NSLog(@"==================\n[%@ %@]\n%@",clsName, methodName,info.arguments.debugDescription);
    }];
    
    
    
    
//    NSMutableSet *ms = [NSMutableSet set];
//    unsigned int methodListCount;
//    Method *methodList = class_copyMethodList(cls, &methodListCount);
//    NSUInteger i;
//    for (i = 0; i < methodListCount; i++) {
//        Method currMethod = (methodList[i]);
//        NSString *mName = [NSString stringWithCString:sel_getName(method_getName(currMethod)) encoding:NSASCIIStringEncoding];
//        [ms addObject:mName];
//    }
//    free(methodList);
//    NSLog(@"%@", ms);
//    
//    
//    for (NSString * m in ms) {
//        NSString * n = [NSString stringWithFormat:@"ex_%@",m];
//        printf("method_exchangeImplementations(class_getInstanceMethod(self, NSSelectorFromString(@\"%s\")), class_getInstanceMethod(self, @selector(NSSelectorFromString(@\"%s\")));\n",m.UTF8String,n.UTF8String);
//    }
    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}

- (void)pasteboardAop {
    NSError * error = nil;
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"URL") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"URLs") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"_initWithName:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"_itemsCoercibleToClass:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"_pasteboardCacheQueue_isPersistent") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"_pasteboardCacheQueue_saveItemCollection:currentNotificationState:outNewNotificationState:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"_pasteboardCacheQueue_setPersistent:currentNotificationState:outNewNotificationState:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"_saveItemCollection:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"_sendPasteboardTypesChangedNotificationOldTypes:newTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"_setItemsAndSave:options:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"_setItemsAndSave:options:coerceStringsToURLs:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"_setItemsAndSaveFromObjects:ofClass:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"_setPersistent:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"addItems:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"availableTypes") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"canInstantiateObjectsOfClass:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"changeCount") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"color") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"colors") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"containsPasteboardTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"containsPasteboardTypes:inItemSet:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"dataForPasteboardType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"dataForPasteboardType:inItemSet:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"hasColors") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"hasImages") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"hasStrings") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"hasURLs") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"image") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"images") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"isPersistent") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"itemProviders") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"itemProvidersForInstantiatingObjectsOfClass:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"itemSetWithPasteboardTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"items") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"name") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"numberOfItems") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"pasteboardTypes") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"pasteboardTypesForItemSet:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setColor:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setColors:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setData:forPasteboardType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setImage:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setImages:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setItemProviders:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        NSArray *providers = aspectInfo.arguments.firstObject;
        NSItemProvider *provider = providers.firstObject;
        NSLog(@"%@",provider);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setItemProviders:localOnly:expirationDate:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setItemProviders:options:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setItems:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setItems:options:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setName:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setObjects:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setObjects:localOnly:expirationDate:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setObjects:options:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setPersistent:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setString:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setStrings:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setURL:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setURLs:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"setValue:forPasteboardType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"string") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"strings") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"valueForPasteboardType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
    [NSClassFromString(@"_UIConcretePasteboard") aspect_hookSelector:NSSelectorFromString(@"valuesForPasteboardType:inItemSet:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            NSLog(@"=============================\n[%@ %@] \n args:%@",
                  aspectInfo.instance,
                  NSStringFromSelector(aspectInfo.originalInvocation.selector),
                  aspectInfo.arguments);
        } error:&error];
}

- (void)NSItemProviderAop {
    
}

- (void)uipasteboardAop {
    NSError * error = nil;
    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"_hasStrings") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
                NSLog(@"=============================\n[%@ %@] \n args:%@",
                      aspectInfo.instance,
                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
                      aspectInfo.arguments);
            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"availableTypes") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"canInstantiateObjectsOfClass:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"hasColors") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"hasImages") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"hasStrings") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"hasURLs") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"isPersistent") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"itemProviders") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"itemProvidersForInstantiatingObjectsOfClass:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"name") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setColor:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setColors:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setImage:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setImages:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setItemProviders:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setItemProviders:localOnly:expirationDate:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setItemProviders:options:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setItems:options:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setName:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setObjects:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setObjects:localOnly:expirationDate:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setObjects:options:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setPersistent:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setString:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setURL:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setURLs:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"mf_addPasteboardRepresentationsForAttachments:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"mf_getAttachmentsPasteboardRepresentations") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"pu_assets") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"pu_containsAssets") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"pu_setAssetRepresentation:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"pu_setAssetRepresentations:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"safari_bestStringForPastingIntoURLField") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"safari_pasteAndNavigateButtonTitle") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"akClearContents") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"akPasteboardAnnotations") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"akPasteboardContainsAnnotations") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"akPasteboardSetAnnotations:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"__ck_canCreateComposition") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"__ck_composition") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"__ck_mediaObjectManager") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"pl_assetsInPhotoLibrary:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"pl_containsAssets") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"pl_setAsset:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"pl_setAssets:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"objectsForPasteboardType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"URL") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"URLs") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"_accessibilityShouldSwapReceiverWithQuickSpeakPasteboard") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
                NSLog(@"=============================\n[%@ %@] \n args:%@",
                      aspectInfo.instance,
                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
                      aspectInfo.arguments);
            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"addItems:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"changeCount") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"color") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"colors") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"containsPasteboardTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"containsPasteboardTypes:inItemSet:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"dataForPasteboardType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"dataForPasteboardType:inItemSet:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"image") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"images") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"itemSetWithPasteboardTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"items") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"numberOfItems") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"pasteboardTypes") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"pasteboardTypesForItemSet:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setData:forPasteboardType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setItems:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setStrings:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"setValue:forPasteboardType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"string") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"strings") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"valueForPasteboardType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"valuesForPasteboardType:inItemSet:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];
//    [NSClassFromString(@"UIPasteboard") aspect_hookSelector:NSSelectorFromString(@"_wbu_setSensitiveString:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//                NSLog(@"=============================\n[%@ %@] \n args:%@",
//                      aspectInfo.instance,
//                      NSStringFromSelector(aspectInfo.originalInvocation.selector),
//                      aspectInfo.arguments);
//            } error:&error];

}

- (void)pbitemAop {
    NSError * error = nil;
    NSArray *selectorNames = @[
        @"UUID",
        @"_addRepresentationTypeloaderBlock",
        @"_canInstantiateObjectOfClass",
        @"_commonInitGenerateUUID",
        @"_itemQueue_copyWithDoNothingRepresentations",
        @"_loadObjectOfClasscompletionBlock",
        @"_loadRepresentationAsTypecompletionBlock",
        @"_representationForType",
        @"addDataRepresentationTypeloader",
        @"addFileCopyRepresentationTypeloader",
        @"addOpenInPlaceRepresentationTypeloader",
        @"addRepresentation",
        @"addRepresentationTypeloader",
        @"addRepresentationTypeloaderBlock",
        @"addRepresentationTypepreferredRepresentationloader",
//        @"availableTypes",
        @"availableTypesWithPreferredRepresentation",
        @"canInstantiateObjectOfClass",
        @"copyWithDoNothingRepresentations",
        @"dataTransferDelegate",
        @"encodeWithCoder",
        @"hasRepresentationConformingToType",
        @"hasRepresentationOfType",
//        @"itemQueue_availableTypes",
        @"itemQueue_canInstantiateObjectOfClass",
        @"itemQueue_dataTransferDelegate",
        @"itemQueue_hasRepresentationConformingToType",
        @"itemQueue_hasRepresentationOfType",
        @"itemQueue_isStoredOnServer",
//        @"itemQueue_localObject",
        @"itemQueue_localUserInfo",
//        @"itemQueue_metadata",
        @"itemQueue_preferredRepresentationByType",
        @"itemQueue_primaryData",
        @"itemQueue_primaryFileURL",
        @"itemQueue_privateMetadata",
        @"itemQueue_removeRepresentationOfType",
//        @"itemQueue_representationByType",
        @"itemQueue_representationForType",
        @"itemQueue_setDataTransferDelegate",
        @"itemQueue_setItemRepresentation",
//        @"itemQueue_typeOrder",
        @"itemQueue_visibilityByType",
        @"itemRepresentationbeganDataTransferWithProgress",
        @"itemRepresentationFinishedDataTransfer",
        @"loadObjectOfClasscompletionBlock",
        @"loadRepresentationAsTypecompletionBlock",
//        @"localObject",
        @"localUserInfo",
//        @"metadata",
        @"preferredRepresentationForType",
        @"privateMetadata",
        @"removeRepresentationOfType",
        @"representationConformingToType",
        @"representations",
        @"setDataTransferDelegate",
        @"setItemQueue_dataTransferDelegate",
        @"setItemQueue_isStoredOnServer",
        @"setItemQueue_localObject",
        @"setItemQueue_localUserInfo",
        @"setItemQueue_metadata",
        @"setItemQueue_preferredRepresentationByType",
        @"setItemQueue_primaryData",
        @"setItemQueue_primaryFileURL",
        @"setItemQueue_privateMetadata",
        @"setItemQueue_representationByType",
        @"setItemQueue_typeOrder",
        @"setItemQueue_visibilityByType",
        @"setLocalObject",
        @"setLocalUserInfo",
        @"setMetadata",
        @"setPrivateMetadata",
        @"uikit_addRepresentationTypeloaderBlock",
        @"uikit_canInstantiateObjectOfClass",
        @"uikit_loadObjectOfClasscompletionBlock",
        @"uikit_loadRepresentationAsTypecompletionBlock",
        @"v2_addFileCopyRepresentationTypeloader",
        @"v2_addRepresentationTypepreferredRepresentationloader",
        @"visibilityForType",
    ];
    
    for (NSString *name in selectorNames) {
        [NSClassFromString(@"PBItem") aspect_hookSelector:NSSelectorFromString(name) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
              NSLog(@"=============================\n[PBItem %@] \n args:%@",
                    name,
                    aspectInfo.arguments);
        } error:&error];
    }
}

@end
