//
//  main.m
//  fwt
//
//  Created by lyf on 2023/11/6.
//

#import <Foundation/Foundation.h>
#import "DynamicStore.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DynamicStore *ds = [[DynamicStore alloc]init];
        NSArray *arr = [ds copyKeyList:@".*"];
        NSLog(@"%@", arr);
        NSLog(@"Hello, World!");
    }
    return 0;
}
