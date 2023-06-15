//
//  main.c
//  C_STUN
//
//  Created by msi on 2023/5/17.
//

#include <stdio.h>
#include <EndpointSecurity/EndpointSecurity.h>

void hanle(es_message_t* msg,void* p) {
    *(uint32_t*)p= msg->version;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    return 0;
}
