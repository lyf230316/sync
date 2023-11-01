//
//  main.m
//  localFile
//
//  Created by lyf on 2023/10/12.
//

#import <Foundation/Foundation.h>
#import "StoreEmotionXmlParser.h"

void test() {
    NSString *filePath = @"/private/tmp/123/cface.xml";
    StoreEmotionXmlParser *exp = [[StoreEmotionXmlParser alloc]initWithPath:filePath];
    NSLog(@"%@", exp.emotions);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        test();
        NSLog(@"Hello, World!");
    }
    return 0;
}


