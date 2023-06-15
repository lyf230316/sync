//
//  es_message_t_wr.c
//  ESC
//
//  Created by lyf on 2023/6/15.
//

#include "es_message_t_wr.h"

size_t es_message_t_write(es_message_t *msg, void*p) {
    size_t size = 0;
    *((uint32_t*)(p+size)) = msg->version;
    size += sizeof(uint32_t);
    
    
    
    return size;
}

//TODO: read
es_message_t * es_message_t_read(void* p) {
    return p;
}
