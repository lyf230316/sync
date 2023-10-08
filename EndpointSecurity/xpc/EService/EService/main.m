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
        if (argc == 2) {
            servieceName = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
        }
        [XPCServer share];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
