//
//  es_message_t_swr.h
//  ESC
//
//  Created by lyf on 2023/6/15.
//

#ifndef es_message_t_swr_h
#define es_message_t_swr_h

#include <stdio.h>
#include <EndpointSecurity/EndpointSecurity.h>

size_t es_message_t_size(es_message_t * _Nonnull message);
size_t es_message_t_write(es_message_t * _Nonnull message, void * _Nonnull p);
size_t es_message_t_read(es_message_t * _Nonnull message, void * _Nonnull p);

#endif /* es_message_t_swr_h */
