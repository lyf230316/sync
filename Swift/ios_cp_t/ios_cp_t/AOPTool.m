//
//  AOPTool.m
//  ios_cp_t
//
//  Created by msi on 2023/8/24.
//

#import "AOPTool.h"
#import "RuntimeTool.h"

@implementation AOPTool

+(void)addAOP:(Class)cls block:(void(^)(NSString *methodName, id<AspectInfo> info))block {
    NSString *clsName = NSStringFromClass(cls);
    NSArray *unhookArray = @[@"dealloc", @".cxx_destruct"];
    NSMutableSet * methods = [RuntimeTool methodListForClass:cls];
    for (NSString *method in methods) {
        if ([unhookArray containsObject:method]) {
            continue;
        }
        NSError *error = nil;
        [cls aspect_hookSelector:NSSelectorFromString(method) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            block(method, aspectInfo);
        } error:&error];
        if (error) {
            NSLog(@"error: %@", error);
        } else {
            NSLog(@"AOP: -[%@ %@]", clsName, method);
        }
    }
}

+(void)addAOPToClass:(Class)cls block:(void(^)(NSString *methodName, id<AspectInfo> info))block {
    NSString *clsName = NSStringFromClass(cls);
    NSArray *unhookArray = @[@"dealloc", @".cxx_destruct"];
    NSMutableSet * methods = [RuntimeTool methodListForClass:[RuntimeTool meteClass:cls]];
    for (NSString *method in methods) {
        if ([unhookArray containsObject:method]) {
            continue;
        }
        NSError *error = nil;
        [cls aspect_hookSelector:NSSelectorFromString(method) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo) {
            block(method, aspectInfo);
        } error:&error];
        if (error) {
            NSLog(@"error: +[%@ %@]: %@", clsName, method, error);
        } else {
            NSLog(@"AOP: +[%@ %@]", clsName, method);
        }
    }
}

@end
