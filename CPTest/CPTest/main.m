//
//  main.m
//  CPTest
//
//  Created by msi on 2023/7/20.
//

#import <Cocoa/Cocoa.h>
#import "fishhook.h"

static int64_t (*origin_xpc_connection_send_message)(xpc_connection_t *connection, xpc_object_t *message);

int64_t my_xpc_connection_send_message(xpc_connection_t *connection, xpc_object_t *message) {
    printf("xpc\n");
    int64_t res = origin_xpc_connection_send_message(connection, message);
    return res;
}

void rebind_xpc_connection_send_message(void) {
    struct rebinding binding;
    binding.name = "xpc_connection_send_message";
    binding.replacement = my_xpc_connection_send_message;
    binding.replaced = (void*)&origin_xpc_connection_send_message;
    rebind_symbols(&binding, 1);
}

static xpc_connection_t (*origin_xpc_connection_create)(const char * _Nullable name, dispatch_queue_t  _Nullable targetq);

xpc_connection_t my_xpc_connection_create(const char * _Nullable name, dispatch_queue_t  _Nullable targetq) {
    printf("xpc:my_xpc_connection_create\n");
    return origin_xpc_connection_create(name, targetq);
}

void rebind_xpc_connection_create(void) {
    struct rebinding binding;
    binding.name = "xpc_connection_create";
    binding.replacement = my_xpc_connection_create;
    binding.replaced = (void*)&origin_xpc_connection_create;
    rebind_symbols(&binding, 1);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        rebind_xpc_connection_create();
        
        NSString *t = @"a";
        NSString *sub = [t substringToIndex:t.length];
        NSLog(@"%@", sub);
        
        return NSApplicationMain(argc, argv);
    }
}
