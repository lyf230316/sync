//
//  RuntimeTool.m
//  ios_cp_t
//
//  Created by msi on 2023/8/24.
//

#import "RuntimeTool.h"
#import <objc/runtime.h>

@implementation RuntimeTool

+ (Class)meteClass:(Class)cls {
    return objc_getMetaClass(class_getName(cls));
}

+ (NSMutableSet *)methodListForClass:(Class)cls {
    NSMutableSet *ms = [NSMutableSet set];
    unsigned int methodListCount;
    Method *methodList = class_copyMethodList(cls, &methodListCount);
    NSUInteger i;
    for (i = 0; i < methodListCount; i++) {
        Method currMethod = (methodList[i]);
        NSString *mName = [NSString stringWithCString:sel_getName(method_getName(currMethod)) encoding:NSASCIIStringEncoding];
        [ms addObject:mName];
    }
    free(methodList);
    return ms;
}

@end
