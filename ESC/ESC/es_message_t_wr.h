//
//  es_message_t_wr.h
//  ESC
//
//  Created by lyf on 2023/6/15.
//

#ifndef es_message_t_wr_h
#define es_message_t_wr_h

#include <stdio.h>
#include <EndpointSecurity/EndpointSecurity.h>

size_t es_message_t_size(es_message_t *message);
size_t es_message_t_write(es_message_t *message, void *p);
size_t es_message_t_read(es_message_t *message, void *p);

#endif /* es_message_t_wr_h */
