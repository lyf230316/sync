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
    
    NSPasteboard *board = NSPasteboard.generalPasteboard;
    
//    [self pasteboardAop];
//    [self pasteboardItemAop];
//    NSPasteboard *board = NSPasteboard.generalPasteboard;
//    NSLog(@"%d",[board clearContents]);
//    [board setString:@"abcd" forType:@"abc"];
//    NSLog(@"%@", [board stringForType:NSPasteboardTypeString]);
//    NSLog(@"%@", [board stringForType:@"abc"]);
//
//    NSLog(@"======================");
//    for (NSPasteboardItem * item in board.pasteboardItems) {
//        for (NSString *type in item.types) {
//            NSLog(@"%@ --->  %@",type, [item stringForType:type]);
//            NSLog(@"%@ --->  %@",type, [item dataForType:type]);
//            NSLog(@"%@ --->  %@",type, [item propertyListForType:type]);
//        }
//    }
//    NSLog(@"======================");
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

- (void)pasteboardAop {
    NSError * error = nil;
//    [$1 aspect_hookSelector:NSSelectorFromString(@"$2") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//        NSMenuItem *instance = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSLog(@"\\n[$1 $2]\\ninstance:%@ \\n arguments: %@\\n ===================== \\n",instance,arguments);
//    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"changeCount") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard changeCount]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"types") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard types]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_typesAtIndex:combinesItems:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _typesAtIndex:combinesItems:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_updateTypeCacheIfNeeded") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _updateTypeCacheIfNeeded]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"name") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard name]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"availableTypeFromArray:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard availableTypeFromArray:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_availableTypeFromArray:inExistingTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _availableTypeFromArray:inExistingTypes:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"clearContents") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard clearContents]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"declareTypes:owner:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard declareTypes:owner:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"setPropertyList:forType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard setPropertyList:forType:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"setData:forType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard setData:forType:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_setData:forType:index:usesPboardTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _setData:forType:index:usesPboardTypes:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"writeObjects:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard writeObjects:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_setOwner:forTypes:atIndex:selector:usesPboardTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _setOwner:forTypes:atIndex:selector:usesPboardTypes:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_pasteboardItems") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _pasteboardItems]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"propertyListForType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard propertyListForType:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"dataForType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard dataForType:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_canRequestDataForType:index:usesPboardTypes:combinesItems:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _canRequestDataForType:index:usesPboardTypes:combinesItems:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_combinedPasteboardDataForTypeIdentifier:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _combinedPasteboardDataForTypeIdentifier:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"addTypes:owner:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard addTypes:owner:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"setString:forType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard setString:forType:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_cachedTypeNameUnion") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _cachedTypeNameUnion]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_currentGeneration") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _currentGeneration]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_promiseTypeNameForIdentifier:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _promiseTypeNameForIdentifier:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_cfPasteboard") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _cfPasteboard]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"dealloc") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard dealloc]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_clearOutstandingPromises") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _clearOutstandingPromises]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_removeFromGlobalTable") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _removeFromGlobalTable]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"releaseGlobally") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard releaseGlobally]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_setExpirationDate:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _setExpirationDate:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataWithoutConversionForTypeIdentifier:index:securityScoped:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _dataWithoutConversionForTypeIdentifier:index:securityScoped:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataWithoutConversionForTypeIdentifier:securityScoped:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _dataWithoutConversionForTypeIdentifier:securityScoped:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_attachSecurityScopeToURL:index:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _attachSecurityScopeToURL:index:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataForType:index:usesPboardTypes:combinesItems:securityScoped:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _dataForType:index:usesPboardTypes:combinesItems:securityScoped:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataWithoutConversionForType:securityScoped:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _dataWithoutConversionForType:securityScoped:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"prepareForNewContentsWithOptions:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard prepareForNewContentsWithOptions:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_contentsOfURL:conformToTypeIdentifiers:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _contentsOfURL:conformToTypeIdentifiers:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"readObjectsForClasses:options:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard readObjectsForClasses:options:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"pasteboardItems") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard pasteboardItems]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"indexOfPasteboardItem:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard indexOfPasteboardItem:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_conformingTypeIdentifiers") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _conformingTypeIdentifiers]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"canReadItemWithDataConformingToTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard canReadItemWithDataConformingToTypes:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"canReadObjectForClasses:options:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard canReadObjectForClasses:options:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataForType:securityScoped:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _dataForType:securityScoped:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"setDataProvider:forTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard setDataProvider:forTypes:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_propertyListForType:securityScoped:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard _propertyListForType:securityScoped:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"stringForType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *instance = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"\n[NSPasteboard stringForType:]\ninstance:%@ \n arguments: %@\n ===================== \n",instance,arguments);
    } error:&error];
}

-(void)pasteboardItemAop{
    void(^aop)(id<AspectInfo> aspectInfo) = ^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"item:%@ \n arguments: %@\n ===================== \n",item,arguments);
    };
    
    NSError * error = nil;
    
//    [$1 aspect_hookSelector:NSSelectorFromString(@"$2") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//        NSLog(@"[$1 $2]");
//        aop(aspectInfo);
//    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"init") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem init]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"setString:forType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem setString:forType:]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"setData:forType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem setData:forType:]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"_auxObject") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem _auxObject]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"_pasteboard") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem _pasteboard]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"_index") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem _index]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"writableTypesForPasteboard:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem writableTypesForPasteboard:]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"types") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem types]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"writingOptionsForType:pasteboard:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem writingOptionsForType:pasteboard:]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"_dataProviderForType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem _dataProviderForType:]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"pasteboardPropertyListForType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem pasteboardPropertyListForType:]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"dataForType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem dataForType:]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"_setPasteboard:index:generation:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem _setPasteboard:index:generation:]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"dealloc") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem dealloc]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"availableTypeFromArray:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem availableTypeFromArray:]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"setDataProvider:forTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem setDataProvider:forTypes:]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"setPropertyList:forType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem setPropertyList:forType:]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"stringForType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem stringForType:]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"propertyListForType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem propertyListForType:]");
        aop(aspectInfo);
    } error:&error];
    [NSPasteboardItem aspect_hookSelector:NSSelectorFromString(@"initWithPasteboardPropertyList:ofType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSLog(@"[NSPasteboardItem initWithPasteboardPropertyList:ofType:]");
        aop(aspectInfo);
    } error:&error];
}

@end
