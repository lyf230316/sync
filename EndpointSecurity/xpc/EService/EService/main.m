//
//  main.m
//  ESevice
//
//  Created by lyf on 2023/7/30.
//

#import <Foundation/Foundation.h>
#import "XPCServer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        [XPCServer share];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
