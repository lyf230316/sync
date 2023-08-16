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
    
    [self pasteboardAop];
    [self pasteboardItemAop];
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
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_typesAtIndex:combinesItems:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _typesAtIndex:combinesItems:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_updateTypeCacheIfNeeded") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _updateTypeCacheIfNeeded]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"name") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  name]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"availableTypeFromArray:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  availableTypeFromArray:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_availableTypeFromArray:inExistingTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _availableTypeFromArray:inExistingTypes:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"clearContents") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  clearContents]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"declareTypes:owner:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSLog(@"[%@  declareTypes:owner:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"setPropertyList:forType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  setPropertyList:forType:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"setData:forType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        NSLog(@"[%@  setData:forType:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_setData:forType:index:usesPboardTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        NSLog(@"[%@  _setData:forType:index:usesPboardTypes:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"writeObjects:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  writeObjects:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_setOwner:forTypes:atIndex:selector:usesPboardTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        NSLog(@"[%@  _setOwner:forTypes:atIndex:selector:usesPboardTypes:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_pasteboardItems") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _pasteboardItems]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"propertyListForType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  propertyListForType:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"dataForType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  dataForType:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_canRequestDataForType:index:usesPboardTypes:combinesItems:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _canRequestDataForType:index:usesPboardTypes:combinesItems:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_combinedPasteboardDataForTypeIdentifier:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _combinedPasteboardDataForTypeIdentifier:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"addTypes:owner:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"setString:forType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        NSLog(@"[%@  setString:forType:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_cachedTypeNameUnion") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _cachedTypeNameUnion]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_currentGeneration") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _currentGeneration]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_promiseTypeNameForIdentifier:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _promiseTypeNameForIdentifier:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
//    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_cfPasteboard") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
////        NSInvocation *invoation = aspectInfo.originalInvocation;
//        NSLog(@"[%@  _cfPasteboard]",item);
//        NSLog(@"%@",arguments);
//    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"dealloc") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  dealloc]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_clearOutstandingPromises") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _clearOutstandingPromises]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_removeFromGlobalTable") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _removeFromGlobalTable]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"releaseGlobally") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  releaseGlobally]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_setExpirationDate:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _setExpirationDate:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataWithoutConversionForTypeIdentifier:index:securityScoped:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _dataWithoutConversionForTypeIdentifier:index:securityScoped:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataWithoutConversionForTypeIdentifier:securityScoped:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _dataWithoutConversionForTypeIdentifier:securityScoped:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_attachSecurityScopeToURL:index:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _attachSecurityScopeToURL:index:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataForType:index:usesPboardTypes:combinesItems:securityScoped:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _dataForType:index:usesPboardTypes:combinesItems:securityScoped:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataWithoutConversionForType:securityScoped:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _dataWithoutConversionForType:securityScoped:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"prepareForNewContentsWithOptions:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  prepareForNewContentsWithOptions:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_contentsOfURL:conformToTypeIdentifiers:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _contentsOfURL:conformToTypeIdentifiers:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"readObjectsForClasses:options:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  readObjectsForClasses:options:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"pasteboardItems") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  pasteboardItems]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"indexOfPasteboardItem:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  indexOfPasteboardItem:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_conformingTypeIdentifiers") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _conformingTypeIdentifiers]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"canReadItemWithDataConformingToTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  canReadItemWithDataConformingToTypes:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"canReadObjectForClasses:options:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  canReadObjectForClasses:options:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataForType:securityScoped:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _dataForType:securityScoped:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"setDataProvider:forTypes:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  setDataProvider:forTypes:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_propertyListForType:securityScoped:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  _propertyListForType:securityScoped:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"stringForType:") withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
////        NSInvocation *invoation = aspectInfo.originalInvocation;
        
        NSLog(@"[%@  stringForType:]",item);
        NSLog(@"%@",arguments);
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
