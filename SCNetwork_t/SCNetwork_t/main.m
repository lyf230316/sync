//
//  main.m
//  SCNetwork_t
//
//  Created by msi on 2023/5/21.
//

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import "CSNetwork.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSLog(@"%d",[CSNetwork connectedToNetwork]);
    }
    return 0;
}


