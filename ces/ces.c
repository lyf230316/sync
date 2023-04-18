//
//  ces.c
//  ces
//
//  Created by msi on 2023/4/17.
//

#include "ces.h"
#include <EndpointSecurity/EndpointSecurity.h>
#include <string.h>


size_t ces_write_process(void *p, es_process_t *process);


size_t ces_write_message(void *p, es_message_t *message) {
    if (!message) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_message_t);
    if (p) {
        memcpy(p,message,size);
    }
    offset += size;
    size = ces_write_process(p ? p+offset : p, message->process);
    offset += size;
    
    
    return offset;
}

size_t ces_write_process(void *p, es_process_t *process) {
    if (!process) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_process_t);
    if (p) {
        memcpy(p, process, size);
    }
    offset += size;
    
    
    
    return offset;
}
