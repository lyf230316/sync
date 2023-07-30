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
    
    [self pasteboardAop];

}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

- (void)pasteboardAop {
    NSError * error = nil;
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_typesAtIndex:combinesItems:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _typesAtIndex:combinesItems:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_updateTypeCacheIfNeeded") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _updateTypeCacheIfNeeded]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"name") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  name]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"availableTypeFromArray:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  availableTypeFromArray:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_availableTypeFromArray:inExistingTypes:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _availableTypeFromArray:inExistingTypes:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"clearContents") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  clearContents]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"declareTypes:owner:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  declareTypes:owner:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"setPropertyList:forType:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  setPropertyList:forType:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"setData:forType:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  setData:forType:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_setData:forType:index:usesPboardTypes:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _setData:forType:index:usesPboardTypes:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"writeObjects:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  writeObjects:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_setOwner:forTypes:atIndex:selector:usesPboardTypes:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        NSLog(@"[%@  _setOwner:forTypes:atIndex:selector:usesPboardTypes:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_pasteboardItems") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _pasteboardItems]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"propertyListForType:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  propertyListForType:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"dataForType:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  dataForType:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_canRequestDataForType:index:usesPboardTypes:combinesItems:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _canRequestDataForType:index:usesPboardTypes:combinesItems:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_combinedPasteboardDataForTypeIdentifier:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _combinedPasteboardDataForTypeIdentifier:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"addTypes:owner:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        NSLog(@"[%@  addTypes:owner:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"setString:forType:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  setString:forType:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_cachedTypeNameUnion") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _cachedTypeNameUnion]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_currentGeneration") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _currentGeneration]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_promiseTypeNameForIdentifier:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _promiseTypeNameForIdentifier:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
//    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_cfPasteboard") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
//        NSMenuItem *item = aspectInfo.instance;
//        NSArray *arguments = aspectInfo.arguments;
//        NSInvocation *invoation = aspectInfo.originalInvocation;
//        id res = nil;
//        [invoation getReturnValue:&res];
//        if (res) {
//            NSLog(@"returnValue:%@", res);
//        }
////        NSLog(@"[%@  _cfPasteboard]",item);
//        NSLog(@"%@",arguments);
//    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"dealloc") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  dealloc]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_clearOutstandingPromises") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _clearOutstandingPromises]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_removeFromGlobalTable") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _removeFromGlobalTable]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"releaseGlobally") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  releaseGlobally]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_setExpirationDate:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _setExpirationDate:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataWithoutConversionForTypeIdentifier:index:securityScoped:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _dataWithoutConversionForTypeIdentifier:index:securityScoped:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataWithoutConversionForTypeIdentifier:securityScoped:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _dataWithoutConversionForTypeIdentifier:securityScoped:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_attachSecurityScopeToURL:index:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _attachSecurityScopeToURL:index:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataForType:index:usesPboardTypes:combinesItems:securityScoped:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _dataForType:index:usesPboardTypes:combinesItems:securityScoped:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataWithoutConversionForType:securityScoped:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _dataWithoutConversionForType:securityScoped:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"prepareForNewContentsWithOptions:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  prepareForNewContentsWithOptions:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_contentsOfURL:conformToTypeIdentifiers:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _contentsOfURL:conformToTypeIdentifiers:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"readObjectsForClasses:options:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  readObjectsForClasses:options:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"pasteboardItems") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  pasteboardItems]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"indexOfPasteboardItem:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  indexOfPasteboardItem:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_conformingTypeIdentifiers") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _conformingTypeIdentifiers]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"canReadItemWithDataConformingToTypes:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  canReadItemWithDataConformingToTypes:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"canReadObjectForClasses:options:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  canReadObjectForClasses:options:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_dataForType:securityScoped:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _dataForType:securityScoped:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"setDataProvider:forTypes:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  setDataProvider:forTypes:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"_propertyListForType:securityScoped:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  _propertyListForType:securityScoped:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
    [NSPasteboard aspect_hookSelector:NSSelectorFromString(@"stringForType:") withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
        NSMenuItem *item = aspectInfo.instance;
        NSArray *arguments = aspectInfo.arguments;
        NSInvocation *invoation = aspectInfo.originalInvocation;
        id res = nil;
        [invoation getReturnValue:&res];
        if (res) {
            NSLog(@"returnValue:%@", res);
        }
        NSLog(@"[%@  stringForType:]",item);
        NSLog(@"%@",arguments);
    } error:&error];
}

@end
