//
//  DynamicStore.m
//  fwt
//
//  Created by lyf on 2023/11/6.
//

#import "DynamicStore.h"
#import <SystemConfiguration/SystemConfiguration.h>

@interface DynamicStore ()

@property(nonatomic, assign)SCDynamicStoreRef store;
@property(nonatomic, assign)SCDynamicStoreContext ctx;

@end

@implementation DynamicStore

void callout (
                    SCDynamicStoreRef            store,
                    CFArrayRef                changedKeys,
                    void            * __nullable    info
                                           ){
    
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _store = SCDynamicStoreCreate(CFAllocatorGetDefault(), CFSTR("abc"), callout, &_ctx);
    }
    return self;
}

- (void)dealloc
{
    if (self.store) {
        CFRelease(self.store);
        self.store = nil;
    }
}

-(NSArray *)copyKeyList:(NSString *)pattern {
    CFArrayRef ref = SCDynamicStoreCopyKeyList(self.store, (__bridge  CFStringRef)pattern);
    NSArray *arr = (__bridge NSArray *)(ref);
    return  arr;
}

-(id)valuesForKeys:(NSString *)key {
    CFPropertyListRef pptl = SCDynamicStoreCopyValue(_store, (__bridge CFStringRef)key);
    CFTypeID typeId = CFGetTypeID(pptl);
    id res = nil;
    if (typeId == CFDictionaryGetTypeID()) {
        res = (__bridge NSDictionary *)pptl;
    } else if (typeId == CFArrayGetTypeID()) {
        res = (__bridge NSArray *)pptl;
    }
    return res;
}

@end
