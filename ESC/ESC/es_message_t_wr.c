//
//  es_message_t_wr.c
//  ESC
//
//  Created by lyf on 2023/6/15.
//

#include "es_message_t_wr.h"
#include <string.h>

size_t mach_msg_type_descriptor_t_write(mach_msg_type_descriptor_t *mach_msg_type_descriptor, void*p) {
    size_t size = 0;

    *((natural_t*)(p+size)) = mach_msg_type_descriptor->pad1;
    size += sizeof(natural_t);

    *((mach_msg_size_t*)(p+size)) = mach_msg_type_descriptor->pad2;
    size += sizeof(mach_msg_size_t);

    *((unsigned int*)(p+size)) = mach_msg_type_descriptor->pad3;
    size += sizeof(unsigned int);

    *((mach_msg_descriptor_type_t*)(p+size)) = mach_msg_type_descriptor->type;
    size += sizeof(mach_msg_descriptor_type_t);

    return size;
}

size_t mach_msg_port_descriptor_t_write(mach_msg_port_descriptor_t *mach_msg_port_descriptor, void*p) {
    size_t size = 0;

    *((mach_port_t*)(p+size)) = mach_msg_port_descriptor->name;
    size += sizeof(mach_port_t);

    *((mach_msg_size_t*)(p+size)) = mach_msg_port_descriptor->pad1;
    size += sizeof(mach_msg_size_t);

    *((unsigned int*)(p+size)) = mach_msg_port_descriptor->pad2;
    size += sizeof(unsigned int);

    *((mach_msg_type_name_t*)(p+size)) = mach_msg_port_descriptor->disposition;
    size += sizeof(mach_msg_type_name_t);

    *((mach_msg_descriptor_type_t*)(p+size)) = mach_msg_port_descriptor->type;
    size += sizeof(mach_msg_descriptor_type_t);

    return size;
}

size_t mach_msg_ool_descriptor32_t_write(mach_msg_ool_descriptor32_t *mach_msg_ool_descriptor32, void*p) {
    size_t size = 0;

    *((uint32_t*)(p+size)) = mach_msg_ool_descriptor32->address;
    size += sizeof(uint32_t);

    *((mach_msg_size_t*)(p+size)) = mach_msg_ool_descriptor32->size;
    size += sizeof(mach_msg_size_t);

    *((boolean_t*)(p+size)) = mach_msg_ool_descriptor32->deallocate;
    size += sizeof(boolean_t);

    *((mach_msg_copy_options_t*)(p+size)) = mach_msg_ool_descriptor32->copy;
    size += sizeof(mach_msg_copy_options_t);

    *((unsigned int*)(p+size)) = mach_msg_ool_descriptor32->pad1;
    size += sizeof(unsigned int);

    *((mach_msg_descriptor_type_t*)(p+size)) = mach_msg_ool_descriptor32->type;
    size += sizeof(mach_msg_descriptor_type_t);

    return size;
}

size_t mach_msg_ool_descriptor64_t_write(mach_msg_ool_descriptor64_t *mach_msg_ool_descriptor64, void*p) {
    size_t size = 0;

    *((uint64_t*)(p+size)) = mach_msg_ool_descriptor64->address;
    size += sizeof(uint64_t);

    *((boolean_t*)(p+size)) = mach_msg_ool_descriptor64->deallocate;
    size += sizeof(boolean_t);

    *((mach_msg_copy_options_t*)(p+size)) = mach_msg_ool_descriptor64->copy;
    size += sizeof(mach_msg_copy_options_t);

    *((unsigned int*)(p+size)) = mach_msg_ool_descriptor64->pad1;
    size += sizeof(unsigned int);

    *((mach_msg_descriptor_type_t*)(p+size)) = mach_msg_ool_descriptor64->type;
    size += sizeof(mach_msg_descriptor_type_t);

    *((mach_msg_size_t*)(p+size)) = mach_msg_ool_descriptor64->size;
    size += sizeof(mach_msg_size_t);

    return size;
}

size_t mach_msg_ool_descriptor_t_write(mach_msg_ool_descriptor_t *mach_msg_ool_descriptor, void*p) {
    size_t size = 0;

    *((void **)(p+size)) = mach_msg_ool_descriptor->address;
    size += sizeof(void *);

    *((boolean_t*)(p+size)) = mach_msg_ool_descriptor->deallocate;
    size += sizeof(boolean_t);

    *((mach_msg_copy_options_t*)(p+size)) = mach_msg_ool_descriptor->copy;
    size += sizeof(mach_msg_copy_options_t);

    *((unsigned int*)(p+size)) = mach_msg_ool_descriptor->pad1;
    size += sizeof(unsigned int);

    *((mach_msg_descriptor_type_t*)(p+size)) = mach_msg_ool_descriptor->type;
    size += sizeof(mach_msg_descriptor_type_t);

    *((mach_msg_size_t*)(p+size)) = mach_msg_ool_descriptor->size;
    size += sizeof(mach_msg_size_t);

    return size;
}

size_t mach_msg_ool_ports_descriptor32_t_write(mach_msg_ool_ports_descriptor32_t *mach_msg_ool_ports_descriptor32, void*p) {
    size_t size = 0;

    *((uint32_t*)(p+size)) = mach_msg_ool_ports_descriptor32->address;
    size += sizeof(uint32_t);

    *((mach_msg_size_t*)(p+size)) = mach_msg_ool_ports_descriptor32->count;
    size += sizeof(mach_msg_size_t);

    *((boolean_t*)(p+size)) = mach_msg_ool_ports_descriptor32->deallocate;
    size += sizeof(boolean_t);

    *((mach_msg_copy_options_t*)(p+size)) = mach_msg_ool_ports_descriptor32->copy;
    size += sizeof(mach_msg_copy_options_t);

    *((mach_msg_type_name_t*)(p+size)) = mach_msg_ool_ports_descriptor32->disposition;
    size += sizeof(mach_msg_type_name_t);

    *((mach_msg_descriptor_type_t*)(p+size)) = mach_msg_ool_ports_descriptor32->type;
    size += sizeof(mach_msg_descriptor_type_t);

    return size;
}

size_t mach_msg_ool_ports_descriptor64_t_write(mach_msg_ool_ports_descriptor64_t *mach_msg_ool_ports_descriptor64, void*p) {
    size_t size = 0;

    *((uint64_t*)(p+size)) = mach_msg_ool_ports_descriptor64->address;
    size += sizeof(uint64_t);

    *((boolean_t*)(p+size)) = mach_msg_ool_ports_descriptor64->deallocate;
    size += sizeof(boolean_t);

    *((mach_msg_copy_options_t*)(p+size)) = mach_msg_ool_ports_descriptor64->copy;
    size += sizeof(mach_msg_copy_options_t);

    *((mach_msg_type_name_t*)(p+size)) = mach_msg_ool_ports_descriptor64->disposition;
    size += sizeof(mach_msg_type_name_t);

    *((mach_msg_descriptor_type_t*)(p+size)) = mach_msg_ool_ports_descriptor64->type;
    size += sizeof(mach_msg_descriptor_type_t);

    *((mach_msg_size_t*)(p+size)) = mach_msg_ool_ports_descriptor64->count;
    size += sizeof(mach_msg_size_t);

    return size;
}

size_t mach_msg_ool_ports_descriptor_t_write(mach_msg_ool_ports_descriptor_t *mach_msg_ool_ports_descriptor, void*p) {
    size_t size = 0;

    *((void **)(p+size)) = mach_msg_ool_ports_descriptor->address;
    size += sizeof(void *);

    *((boolean_t*)(p+size)) = mach_msg_ool_ports_descriptor->deallocate;
    size += sizeof(boolean_t);

    *((mach_msg_copy_options_t*)(p+size)) = mach_msg_ool_ports_descriptor->copy;
    size += sizeof(mach_msg_copy_options_t);

    *((mach_msg_type_name_t*)(p+size)) = mach_msg_ool_ports_descriptor->disposition;
    size += sizeof(mach_msg_type_name_t);

    *((mach_msg_descriptor_type_t*)(p+size)) = mach_msg_ool_ports_descriptor->type;
    size += sizeof(mach_msg_descriptor_type_t);

    *((mach_msg_size_t*)(p+size)) = mach_msg_ool_ports_descriptor->count;
    size += sizeof(mach_msg_size_t);

    return size;
}

size_t mach_msg_guarded_port_descriptor32_t_write(mach_msg_guarded_port_descriptor32_t *mach_msg_guarded_port_descriptor32, void*p) {
    size_t size = 0;

    *((uint32_t*)(p+size)) = mach_msg_guarded_port_descriptor32->context;
    size += sizeof(uint32_t);

    *((mach_port_name_t*)(p+size)) = mach_msg_guarded_port_descriptor32->name;
    size += sizeof(mach_port_name_t);

    *((mach_msg_guard_flags_t*)(p+size)) = mach_msg_guarded_port_descriptor32->flags;
    size += sizeof(mach_msg_guard_flags_t);

    *((mach_msg_type_name_t*)(p+size)) = mach_msg_guarded_port_descriptor32->disposition;
    size += sizeof(mach_msg_type_name_t);

    *((mach_msg_descriptor_type_t*)(p+size)) = mach_msg_guarded_port_descriptor32->type;
    size += sizeof(mach_msg_descriptor_type_t);

    return size;
}

size_t mach_msg_guarded_port_descriptor64_t_write(mach_msg_guarded_port_descriptor64_t *mach_msg_guarded_port_descriptor64, void*p) {
    size_t size = 0;

    *((uint64_t*)(p+size)) = mach_msg_guarded_port_descriptor64->context;
    size += sizeof(uint64_t);

    *((mach_msg_guard_flags_t*)(p+size)) = mach_msg_guarded_port_descriptor64->flags;
    size += sizeof(mach_msg_guard_flags_t);

    *((mach_msg_type_name_t*)(p+size)) = mach_msg_guarded_port_descriptor64->disposition;
    size += sizeof(mach_msg_type_name_t);

    *((mach_msg_descriptor_type_t*)(p+size)) = mach_msg_guarded_port_descriptor64->type;
    size += sizeof(mach_msg_descriptor_type_t);

    *((mach_port_name_t*)(p+size)) = mach_msg_guarded_port_descriptor64->name;
    size += sizeof(mach_port_name_t);

    return size;
}

size_t mach_msg_guarded_port_descriptor_t_write(mach_msg_guarded_port_descriptor_t *mach_msg_guarded_port_descriptor, void*p) {
    size_t size = 0;

    *((mach_port_context_t*)(p+size)) = mach_msg_guarded_port_descriptor->context;
    size += sizeof(mach_port_context_t);

    *((mach_msg_guard_flags_t*)(p+size)) = mach_msg_guarded_port_descriptor->flags;
    size += sizeof(mach_msg_guard_flags_t);

    *((mach_msg_type_name_t*)(p+size)) = mach_msg_guarded_port_descriptor->disposition;
    size += sizeof(mach_msg_type_name_t);

    *((mach_msg_descriptor_type_t*)(p+size)) = mach_msg_guarded_port_descriptor->type;
    size += sizeof(mach_msg_descriptor_type_t);

    *((mach_port_name_t*)(p+size)) = mach_msg_guarded_port_descriptor->name;
    size += sizeof(mach_port_name_t);

    return size;
}

size_t mach_msg_body_t_write(mach_msg_body_t *mach_msg_body, void*p) {
    size_t size = 0;

    *((mach_msg_size_t*)(p+size)) = mach_msg_body->msgh_descriptor_count;
    size += sizeof(mach_msg_size_t);

    return size;
}

size_t mach_msg_header_t_write(mach_msg_header_t *mach_msg_header, void*p) {
    size_t size = 0;

    *((mach_msg_bits_t*)(p+size)) = mach_msg_header->msgh_bits;
    size += sizeof(mach_msg_bits_t);

    *((mach_msg_size_t*)(p+size)) = mach_msg_header->msgh_size;
    size += sizeof(mach_msg_size_t);

    *((mach_port_t*)(p+size)) = mach_msg_header->msgh_remote_port;
    size += sizeof(mach_port_t);

    *((mach_port_t*)(p+size)) = mach_msg_header->msgh_local_port;
    size += sizeof(mach_port_t);

    *((mach_port_name_t*)(p+size)) = mach_msg_header->msgh_voucher_port;
    size += sizeof(mach_port_name_t);

    *((mach_msg_id_t*)(p+size)) = mach_msg_header->msgh_id;
    size += sizeof(mach_msg_id_t);

    return size;
}

size_t mach_msg_base_t_write(mach_msg_base_t *mach_msg_base, void*p) {
    size_t size = 0;

    size += mach_msg_header_t_write(&mach_msg_base->header,p+size);

    size += mach_msg_body_t_write(&mach_msg_base->body,p+size);

    return size;
}

size_t mach_msg_trailer_t_write(mach_msg_trailer_t *mach_msg_trailer, void*p) {
    size_t size = 0;

    *((mach_msg_trailer_type_t*)(p+size)) = mach_msg_trailer->msgh_trailer_type;
    size += sizeof(mach_msg_trailer_type_t);

    *((mach_msg_trailer_size_t*)(p+size)) = mach_msg_trailer->msgh_trailer_size;
    size += sizeof(mach_msg_trailer_size_t);

    return size;
}

size_t mach_msg_seqno_trailer_t_write(mach_msg_seqno_trailer_t *mach_msg_seqno_trailer, void*p) {
    size_t size = 0;

    *((mach_msg_trailer_type_t*)(p+size)) = mach_msg_seqno_trailer->msgh_trailer_type;
    size += sizeof(mach_msg_trailer_type_t);

    *((mach_msg_trailer_size_t*)(p+size)) = mach_msg_seqno_trailer->msgh_trailer_size;
    size += sizeof(mach_msg_trailer_size_t);

    *((mach_port_seqno_t*)(p+size)) = mach_msg_seqno_trailer->msgh_seqno;
    size += sizeof(mach_port_seqno_t);

    return size;
}

size_t security_token_t_write(security_token_t *security_token, void*p) {
    size_t size = 0;

    memcpy(p+size, security_token->val, sizeof(unsigned int) * 2);
    size += sizeof(unsigned int) * 2;

    return size;
}

size_t mach_msg_security_trailer_t_write(mach_msg_security_trailer_t *mach_msg_security_trailer, void*p) {
    size_t size = 0;

    *((mach_msg_trailer_type_t*)(p+size)) = mach_msg_security_trailer->msgh_trailer_type;
    size += sizeof(mach_msg_trailer_type_t);

    *((mach_msg_trailer_size_t*)(p+size)) = mach_msg_security_trailer->msgh_trailer_size;
    size += sizeof(mach_msg_trailer_size_t);

    *((mach_port_seqno_t*)(p+size)) = mach_msg_security_trailer->msgh_seqno;
    size += sizeof(mach_port_seqno_t);

    size += security_token_t_write(&mach_msg_security_trailer->msgh_sender,p+size);

    return size;
}

size_t audit_token_t_write(audit_token_t *audit_token, void*p) {
    size_t size = 0;

    memcpy(p+size, audit_token->val, sizeof(unsigned int) * 8);
    size += sizeof(unsigned int) * 8;

    return size;
}

size_t mach_msg_audit_trailer_t_write(mach_msg_audit_trailer_t *mach_msg_audit_trailer, void*p) {
    size_t size = 0;

    *((mach_msg_trailer_type_t*)(p+size)) = mach_msg_audit_trailer->msgh_trailer_type;
    size += sizeof(mach_msg_trailer_type_t);

    *((mach_msg_trailer_size_t*)(p+size)) = mach_msg_audit_trailer->msgh_trailer_size;
    size += sizeof(mach_msg_trailer_size_t);

    *((mach_port_seqno_t*)(p+size)) = mach_msg_audit_trailer->msgh_seqno;
    size += sizeof(mach_port_seqno_t);

    size += security_token_t_write(&mach_msg_audit_trailer->msgh_sender,p+size);

    size += audit_token_t_write(&mach_msg_audit_trailer->msgh_audit,p+size);

    return size;
}

size_t mach_msg_context_trailer_t_write(mach_msg_context_trailer_t *mach_msg_context_trailer, void*p) {
    size_t size = 0;

    *((mach_msg_trailer_type_t*)(p+size)) = mach_msg_context_trailer->msgh_trailer_type;
    size += sizeof(mach_msg_trailer_type_t);

    *((mach_msg_trailer_size_t*)(p+size)) = mach_msg_context_trailer->msgh_trailer_size;
    size += sizeof(mach_msg_trailer_size_t);

    *((mach_port_seqno_t*)(p+size)) = mach_msg_context_trailer->msgh_seqno;
    size += sizeof(mach_port_seqno_t);

    size += security_token_t_write(&mach_msg_context_trailer->msgh_sender,p+size);

    size += audit_token_t_write(&mach_msg_context_trailer->msgh_audit,p+size);

    *((mach_port_context_t*)(p+size)) = mach_msg_context_trailer->msgh_context;
    size += sizeof(mach_port_context_t);

    return size;
}

size_t msg_labels_t_write(msg_labels_t *msg_labels, void*p) {
    size_t size = 0;

    *((mach_port_name_t*)(p+size)) = msg_labels->sender;
    size += sizeof(mach_port_name_t);

    return size;
}

size_t mach_msg_mac_trailer_t_write(mach_msg_mac_trailer_t *mach_msg_mac_trailer, void*p) {
    size_t size = 0;

    *((mach_msg_trailer_type_t*)(p+size)) = mach_msg_mac_trailer->msgh_trailer_type;
    size += sizeof(mach_msg_trailer_type_t);

    *((mach_msg_trailer_size_t*)(p+size)) = mach_msg_mac_trailer->msgh_trailer_size;
    size += sizeof(mach_msg_trailer_size_t);

    *((mach_port_seqno_t*)(p+size)) = mach_msg_mac_trailer->msgh_seqno;
    size += sizeof(mach_port_seqno_t);

    size += security_token_t_write(&mach_msg_mac_trailer->msgh_sender,p+size);

    size += audit_token_t_write(&mach_msg_mac_trailer->msgh_audit,p+size);

    *((mach_port_context_t*)(p+size)) = mach_msg_mac_trailer->msgh_context;
    size += sizeof(mach_port_context_t);

    *((mach_msg_filter_id*)(p+size)) = mach_msg_mac_trailer->msgh_ad;
    size += sizeof(mach_msg_filter_id);

    size += msg_labels_t_write(&mach_msg_mac_trailer->msgh_labels,p+size);

    return size;
}

size_t mach_msg_empty_send_t_write(mach_msg_empty_send_t *mach_msg_empty_send, void*p) {
    size_t size = 0;

    size += mach_msg_header_t_write(&mach_msg_empty_send->header,p+size);

    return size;
}

size_t mach_msg_empty_rcv_t_write(mach_msg_empty_rcv_t *mach_msg_empty_rcv, void*p) {
    size_t size = 0;

    size += mach_msg_header_t_write(&mach_msg_empty_rcv->header,p+size);

    size += mach_msg_trailer_t_write(&mach_msg_empty_rcv->trailer,p+size);

    return size;
}

size_t es_event_id_t_write(es_event_id_t *event_id, void*p) {
    size_t size = 0;

    return size;
}

size_t es_token_t_write(es_token_t *token, void*p) {
    size_t size = 0;

    *((size_t*)(p+size)) = token->size;
    size += sizeof(size_t);

    *((const uint8_t **)(p+size)) = token->data;
    size += sizeof(const uint8_t *);

    return size;
}

size_t es_string_token_t_write(es_string_token_t *string_token, void*p) {
    size_t size = 0;

    *((size_t*)(p+size)) = string_token->length;
    size += sizeof(size_t);

    *((const char **)(p+size)) = string_token->data;
    size += sizeof(const char *);

    return size;
}

size_t es_muted_path_t_write(es_muted_path_t *muted_path, void*p) {
    size_t size = 0;

    *((es_mute_path_type_t*)(p+size)) = muted_path->type;
    size += sizeof(es_mute_path_type_t);

    *((size_t*)(p+size)) = muted_path->event_count;
    size += sizeof(size_t);

    *((const es_event_type_t **)(p+size)) = muted_path->events;
    size += sizeof(const es_event_type_t *);

    size += es_string_token_t_write(&muted_path->path,p+size);

    return size;
}

size_t es_muted_paths_t_write(es_muted_paths_t *muted_paths, void*p) {
    size_t size = 0;

    *((size_t*)(p+size)) = muted_paths->count;
    size += sizeof(size_t);

    *((const es_muted_path_t **)(p+size)) = muted_paths->paths;
    size += sizeof(const es_muted_path_t *);

    return size;
}

size_t es_muted_process_t_write(es_muted_process_t *muted_process, void*p) {
    size_t size = 0;

    size += audit_token_t_write(&muted_process->audit_token,p+size);

    *((size_t*)(p+size)) = muted_process->event_count;
    size += sizeof(size_t);

    *((const es_event_type_t **)(p+size)) = muted_process->events;
    size += sizeof(const es_event_type_t *);

    return size;
}

size_t es_muted_processes_t_write(es_muted_processes_t *muted_processes, void*p) {
    size_t size = 0;

    *((size_t*)(p+size)) = muted_processes->count;
    size += sizeof(size_t);

    *((const es_muted_process_t **)(p+size)) = muted_processes->processes;
    size += sizeof(const es_muted_process_t *);

    return size;
}

size_t ntsid_t_write(ntsid_t *ntsid, void*p) {
    size_t size = 0;

    *((u_int8_t*)(p+size)) = ntsid->sid_kind;
    size += sizeof(u_int8_t);

    *((u_int8_t*)(p+size)) = ntsid->sid_authcount;
    size += sizeof(u_int8_t);

    memcpy(p+size, ntsid->sid_authority, sizeof(u_int8_t) * 6);
    size += sizeof(u_int8_t) * 6;

    memcpy(p+size, ntsid->sid_authorities, sizeof(u_int32_t) * 16);
    size += sizeof(u_int32_t) * 16;

    return size;
}

size_t es_file_t_write(es_file_t *file, void*p) {
    size_t size = 0;

    size += es_string_token_t_write(&file->path,p+size);

    *((bool*)(p+size)) = file->path_truncated;
    size += sizeof(bool);

    *((struct stat*)(p+size)) = file->stat;
    size += sizeof(struct stat);

    return size;
}

size_t es_thread_t_write(es_thread_t *thread, void*p) {
    size_t size = 0;

    *((uint64_t*)(p+size)) = thread->thread_id;
    size += sizeof(uint64_t);

    return size;
}

size_t es_process_t_write(es_process_t *process, void*p) {
    size_t size = 0;

    size += audit_token_t_write(&process->audit_token,p+size);

    *((pid_t*)(p+size)) = process->ppid;
    size += sizeof(pid_t);

    *((pid_t*)(p+size)) = process->original_ppid;
    size += sizeof(pid_t);

    *((pid_t*)(p+size)) = process->group_id;
    size += sizeof(pid_t);

    *((pid_t*)(p+size)) = process->session_id;
    size += sizeof(pid_t);

    *((uint32_t*)(p+size)) = process->codesigning_flags;
    size += sizeof(uint32_t);

    *((bool*)(p+size)) = process->is_platform_binary;
    size += sizeof(bool);

    *((bool*)(p+size)) = process->is_es_client;
    size += sizeof(bool);

    memcpy(p+size, process->cdhash, sizeof(uint8_t) * 20);
    size += sizeof(uint8_t) * 20;

    size += es_string_token_t_write(&process->signing_id,p+size);

    size += es_string_token_t_write(&process->team_id,p+size);

    size += es_file_t_write(process->executable,p+size);

    size += es_file_t_write(process->tty,p+size);

    *((struct timeval*)(p+size)) = process->start_time;
    size += sizeof(struct timeval);

    size += audit_token_t_write(&process->responsible_audit_token,p+size);

    size += audit_token_t_write(&process->parent_audit_token,p+size);

    return size;
}

size_t es_thread_state_t_write(es_thread_state_t *thread_state, void*p) {
    size_t size = 0;

    *((int*)(p+size)) = thread_state->flavor;
    size += sizeof(int);

    size += es_token_t_write(&thread_state->state,p+size);

    return size;
}

size_t es_fd_t_write(es_fd_t *fd, void*p) {
    size_t size = 0;

    *((int32_t*)(p+size)) = fd->fd;
    size += sizeof(int32_t);

    *((uint32_t*)(p+size)) = fd->fdtype;
    size += sizeof(uint32_t);

    return size;
}

size_t es_btm_launch_item_t_write(es_btm_launch_item_t *btm_launch_item, void*p) {
    size_t size = 0;

    *((es_btm_item_type_t*)(p+size)) = btm_launch_item->item_type;
    size += sizeof(es_btm_item_type_t);

    *((bool*)(p+size)) = btm_launch_item->legacy;
    size += sizeof(bool);

    *((bool*)(p+size)) = btm_launch_item->managed;
    size += sizeof(bool);

    *((uid_t*)(p+size)) = btm_launch_item->uid;
    size += sizeof(uid_t);

    size += es_string_token_t_write(&btm_launch_item->item_url,p+size);

    size += es_string_token_t_write(&btm_launch_item->app_url,p+size);

    return size;
}

size_t es_event_exec_t_write(es_event_exec_t *event_exec, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_exec->target,p+size);

    size += es_token_t_write(&event_exec->reserved0,p+size);

    return size;
}

size_t es_event_open_t_write(es_event_open_t *event_open, void*p) {
    size_t size = 0;

    *((int32_t*)(p+size)) = event_open->fflag;
    size += sizeof(int32_t);

    size += es_file_t_write(event_open->file,p+size);

    return size;
}

size_t es_event_kextload_t_write(es_event_kextload_t *event_kextload, void*p) {
    size_t size = 0;

    size += es_string_token_t_write(&event_kextload->identifier,p+size);

    return size;
}

size_t es_event_kextunload_t_write(es_event_kextunload_t *event_kextunload, void*p) {
    size_t size = 0;

    size += es_string_token_t_write(&event_kextunload->identifier,p+size);

    return size;
}

size_t es_event_unlink_t_write(es_event_unlink_t *event_unlink, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_unlink->target,p+size);

    size += es_file_t_write(event_unlink->parent_dir,p+size);

    return size;
}

size_t es_event_mmap_t_write(es_event_mmap_t *event_mmap, void*p) {
    size_t size = 0;

    *((int32_t*)(p+size)) = event_mmap->protection;
    size += sizeof(int32_t);

    *((int32_t*)(p+size)) = event_mmap->max_protection;
    size += sizeof(int32_t);

    *((int32_t*)(p+size)) = event_mmap->flags;
    size += sizeof(int32_t);

    *((uint64_t*)(p+size)) = event_mmap->file_pos;
    size += sizeof(uint64_t);

    size += es_file_t_write(event_mmap->source,p+size);

    return size;
}

size_t es_event_link_t_write(es_event_link_t *event_link, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_link->source,p+size);

    size += es_file_t_write(event_link->target_dir,p+size);

    size += es_string_token_t_write(&event_link->target_filename,p+size);

    return size;
}

size_t es_event_mount_t_write(es_event_mount_t *event_mount, void*p) {
    size_t size = 0;

    *((struct statfs * _Nonnull*)(p+size)) = event_mount->statfs;
    size += sizeof(struct statfs * _Nonnull);

    return size;
}

size_t es_event_unmount_t_write(es_event_unmount_t *event_unmount, void*p) {
    size_t size = 0;

    *((struct statfs * _Nonnull*)(p+size)) = event_unmount->statfs;
    size += sizeof(struct statfs * _Nonnull);

    return size;
}

size_t es_event_remount_t_write(es_event_remount_t *event_remount, void*p) {
    size_t size = 0;

    *((struct statfs * _Nonnull*)(p+size)) = event_remount->statfs;
    size += sizeof(struct statfs * _Nonnull);

    return size;
}

size_t es_event_fork_t_write(es_event_fork_t *event_fork, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_fork->child,p+size);

    return size;
}

size_t es_event_mprotect_t_write(es_event_mprotect_t *event_mprotect, void*p) {
    size_t size = 0;

    *((int32_t*)(p+size)) = event_mprotect->protection;
    size += sizeof(int32_t);

    *((user_addr_t*)(p+size)) = event_mprotect->address;
    size += sizeof(user_addr_t);

    *((user_size_t*)(p+size)) = event_mprotect->size;
    size += sizeof(user_size_t);

    return size;
}

size_t es_event_signal_t_write(es_event_signal_t *event_signal, void*p) {
    size_t size = 0;

    *((int*)(p+size)) = event_signal->sig;
    size += sizeof(int);

    size += es_process_t_write(event_signal->target,p+size);

    return size;
}

size_t es_event_rename_t__destination__new_path_write(es_event_rename_t__destination__new_path *event_rename_t_destination_new_path, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_rename_t_destination_new_path->dir,p+size);

    size += es_string_token_t_write(&event_rename_t_destination_new_path->filename,p+size);

    return size;
}

size_t es_event_rename_t_write(es_event_rename_t *event_rename, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_rename->source,p+size);

    *((es_destination_type_t*)(p+size)) = event_rename->destination_type;
    size += sizeof(es_destination_type_t);

    size += es_event_rename_t__destination_write(&event_rename->destination,p+size);

    return size;
}

size_t es_event_setextattr_t_write(es_event_setextattr_t *event_setextattr, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_setextattr->target,p+size);

    size += es_string_token_t_write(&event_setextattr->extattr,p+size);

    return size;
}

size_t es_event_getextattr_t_write(es_event_getextattr_t *event_getextattr, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_getextattr->target,p+size);

    size += es_string_token_t_write(&event_getextattr->extattr,p+size);

    return size;
}

size_t es_event_deleteextattr_t_write(es_event_deleteextattr_t *event_deleteextattr, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_deleteextattr->target,p+size);

    size += es_string_token_t_write(&event_deleteextattr->extattr,p+size);

    return size;
}

size_t es_event_setmode_t_write(es_event_setmode_t *event_setmode, void*p) {
    size_t size = 0;

    *((mode_t*)(p+size)) = event_setmode->mode;
    size += sizeof(mode_t);

    size += es_file_t_write(event_setmode->target,p+size);

    return size;
}

size_t es_event_setflags_t_write(es_event_setflags_t *event_setflags, void*p) {
    size_t size = 0;

    *((uint32_t*)(p+size)) = event_setflags->flags;
    size += sizeof(uint32_t);

    size += es_file_t_write(event_setflags->target,p+size);

    return size;
}

size_t es_event_setowner_t_write(es_event_setowner_t *event_setowner, void*p) {
    size_t size = 0;

    *((uid_t*)(p+size)) = event_setowner->uid;
    size += sizeof(uid_t);

    *((gid_t*)(p+size)) = event_setowner->gid;
    size += sizeof(gid_t);

    size += es_file_t_write(event_setowner->target,p+size);

    return size;
}

size_t es_event_close_t_write(es_event_close_t *event_close, void*p) {
    size_t size = 0;

    *((bool*)(p+size)) = event_close->modified;
    size += sizeof(bool);

    size += es_file_t_write(event_close->target,p+size);

    return size;
}

size_t es_event_create_t__destination__new_path_write(es_event_create_t__destination__new_path *event_create_t_destination_new_path, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_create_t_destination_new_path->dir,p+size);

    size += es_string_token_t_write(&event_create_t_destination_new_path->filename,p+size);

    *((mode_t*)(p+size)) = event_create_t_destination_new_path->mode;
    size += sizeof(mode_t);

    return size;
}

size_t es_event_create_t_write(es_event_create_t *event_create, void*p) {
    size_t size = 0;

    *((es_destination_type_t*)(p+size)) = event_create->destination_type;
    size += sizeof(es_destination_type_t);

    size += es_event_create_t__destination_write(&event_create->destination,p+size);

    memcpy(p+size, event_create->reserved2, sizeof(uint8_t) * 16);
    size += sizeof(uint8_t) * 16;

    return size;
}

size_t es_event_exit_t_write(es_event_exit_t *event_exit, void*p) {
    size_t size = 0;

    *((int*)(p+size)) = event_exit->stat;
    size += sizeof(int);

    return size;
}

size_t es_event_exchangedata_t_write(es_event_exchangedata_t *event_exchangedata, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_exchangedata->file1,p+size);

    size += es_file_t_write(event_exchangedata->file2,p+size);

    return size;
}

size_t es_event_write_t_write(es_event_write_t *event_write, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_write->target,p+size);

    return size;
}

size_t es_event_truncate_t_write(es_event_truncate_t *event_truncate, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_truncate->target,p+size);

    return size;
}

size_t es_event_chdir_t_write(es_event_chdir_t *event_chdir, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_chdir->target,p+size);

    return size;
}

size_t es_event_stat_t_write(es_event_stat_t *event_stat, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_stat->target,p+size);

    return size;
}

size_t es_event_chroot_t_write(es_event_chroot_t *event_chroot, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_chroot->target,p+size);

    return size;
}

size_t es_event_listextattr_t_write(es_event_listextattr_t *event_listextattr, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_listextattr->target,p+size);

    return size;
}

size_t es_event_iokit_open_t_write(es_event_iokit_open_t *event_iokit_open, void*p) {
    size_t size = 0;

    *((uint32_t*)(p+size)) = event_iokit_open->user_client_type;
    size += sizeof(uint32_t);

    size += es_string_token_t_write(&event_iokit_open->user_client_class,p+size);

    return size;
}

size_t es_event_get_task_t_write(es_event_get_task_t *event_get_task, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_get_task->target,p+size);

    *((es_get_task_type_t*)(p+size)) = event_get_task->type;
    size += sizeof(es_get_task_type_t);

    return size;
}

size_t es_event_get_task_read_t_write(es_event_get_task_read_t *event_get_task_read, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_get_task_read->target,p+size);

    *((es_get_task_type_t*)(p+size)) = event_get_task_read->type;
    size += sizeof(es_get_task_type_t);

    return size;
}

size_t es_event_get_task_inspect_t_write(es_event_get_task_inspect_t *event_get_task_inspect, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_get_task_inspect->target,p+size);

    *((es_get_task_type_t*)(p+size)) = event_get_task_inspect->type;
    size += sizeof(es_get_task_type_t);

    return size;
}

size_t es_event_get_task_name_t_write(es_event_get_task_name_t *event_get_task_name, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_get_task_name->target,p+size);

    *((es_get_task_type_t*)(p+size)) = event_get_task_name->type;
    size += sizeof(es_get_task_type_t);

    return size;
}

size_t es_event_getattrlist_t_write(es_event_getattrlist_t *event_getattrlist, void*p) {
    size_t size = 0;

    *((struct attrlist*)(p+size)) = event_getattrlist->attrlist;
    size += sizeof(struct attrlist);

    size += es_file_t_write(event_getattrlist->target,p+size);

    return size;
}

size_t es_event_setattrlist_t_write(es_event_setattrlist_t *event_setattrlist, void*p) {
    size_t size = 0;

    *((struct attrlist*)(p+size)) = event_setattrlist->attrlist;
    size += sizeof(struct attrlist);

    size += es_file_t_write(event_setattrlist->target,p+size);

    return size;
}

size_t es_event_file_provider_update_t_write(es_event_file_provider_update_t *event_file_provider_update, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_file_provider_update->source,p+size);

    size += es_string_token_t_write(&event_file_provider_update->target_path,p+size);

    return size;
}

size_t es_event_file_provider_materialize_t_write(es_event_file_provider_materialize_t *event_file_provider_materialize, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_file_provider_materialize->instigator,p+size);

    size += es_file_t_write(event_file_provider_materialize->source,p+size);

    size += es_file_t_write(event_file_provider_materialize->target,p+size);

    return size;
}

size_t es_event_readlink_t_write(es_event_readlink_t *event_readlink, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_readlink->source,p+size);

    return size;
}

size_t es_event_lookup_t_write(es_event_lookup_t *event_lookup, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_lookup->source_dir,p+size);

    size += es_string_token_t_write(&event_lookup->relative_target,p+size);

    return size;
}

size_t es_event_access_t_write(es_event_access_t *event_access, void*p) {
    size_t size = 0;

    *((int32_t*)(p+size)) = event_access->mode;
    size += sizeof(int32_t);

    size += es_file_t_write(event_access->target,p+size);

    return size;
}

size_t es_event_utimes_t_write(es_event_utimes_t *event_utimes, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_utimes->target,p+size);

    *((struct timespec*)(p+size)) = event_utimes->atime;
    size += sizeof(struct timespec);

    *((struct timespec*)(p+size)) = event_utimes->mtime;
    size += sizeof(struct timespec);

    return size;
}

size_t es_event_clone_t_write(es_event_clone_t *event_clone, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_clone->source,p+size);

    size += es_file_t_write(event_clone->target_dir,p+size);

    size += es_string_token_t_write(&event_clone->target_name,p+size);

    return size;
}

size_t es_event_copyfile_t_write(es_event_copyfile_t *event_copyfile, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_copyfile->source,p+size);

    size += es_file_t_write(event_copyfile->target_file,p+size);

    size += es_file_t_write(event_copyfile->target_dir,p+size);

    size += es_string_token_t_write(&event_copyfile->target_name,p+size);

    *((mode_t*)(p+size)) = event_copyfile->mode;
    size += sizeof(mode_t);

    *((int32_t*)(p+size)) = event_copyfile->flags;
    size += sizeof(int32_t);

    return size;
}

size_t es_event_fcntl_t_write(es_event_fcntl_t *event_fcntl, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_fcntl->target,p+size);

    *((int32_t*)(p+size)) = event_fcntl->cmd;
    size += sizeof(int32_t);

    return size;
}

size_t es_event_readdir_t_write(es_event_readdir_t *event_readdir, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_readdir->target,p+size);

    return size;
}

size_t es_event_fsgetpath_t_write(es_event_fsgetpath_t *event_fsgetpath, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_fsgetpath->target,p+size);

    return size;
}

size_t es_event_settime_t_write(es_event_settime_t *event_settime, void*p) {
    size_t size = 0;

    return size;
}

size_t es_event_dup_t_write(es_event_dup_t *event_dup, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_dup->target,p+size);

    return size;
}

size_t es_event_uipc_bind_t_write(es_event_uipc_bind_t *event_uipc_bind, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_uipc_bind->dir,p+size);

    size += es_string_token_t_write(&event_uipc_bind->filename,p+size);

    *((mode_t*)(p+size)) = event_uipc_bind->mode;
    size += sizeof(mode_t);

    return size;
}

size_t es_event_uipc_connect_t_write(es_event_uipc_connect_t *event_uipc_connect, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_uipc_connect->file,p+size);

    *((int*)(p+size)) = event_uipc_connect->domain;
    size += sizeof(int);

    *((int*)(p+size)) = event_uipc_connect->type;
    size += sizeof(int);

    *((int*)(p+size)) = event_uipc_connect->protocol;
    size += sizeof(int);

    return size;
}

size_t es_event_setacl_t_write(es_event_setacl_t *event_setacl, void*p) {
    size_t size = 0;

    size += es_file_t_write(event_setacl->target,p+size);

    *((es_set_or_clear_t*)(p+size)) = event_setacl->set_or_clear;
    size += sizeof(es_set_or_clear_t);

    size += es_event_setacl_t__acl_write(&event_setacl->acl,p+size);

    return size;
}

size_t es_event_pty_grant_t_write(es_event_pty_grant_t *event_pty_grant, void*p) {
    size_t size = 0;

    *((dev_t*)(p+size)) = event_pty_grant->dev;
    size += sizeof(dev_t);

    return size;
}

size_t es_event_pty_close_t_write(es_event_pty_close_t *event_pty_close, void*p) {
    size_t size = 0;

    *((dev_t*)(p+size)) = event_pty_close->dev;
    size += sizeof(dev_t);

    return size;
}

size_t es_event_proc_check_t_write(es_event_proc_check_t *event_proc_check, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_proc_check->target,p+size);

    *((es_proc_check_type_t*)(p+size)) = event_proc_check->type;
    size += sizeof(es_proc_check_type_t);

    *((int*)(p+size)) = event_proc_check->flavor;
    size += sizeof(int);

    return size;
}

size_t es_event_searchfs_t_write(es_event_searchfs_t *event_searchfs, void*p) {
    size_t size = 0;

    *((struct attrlist*)(p+size)) = event_searchfs->attrlist;
    size += sizeof(struct attrlist);

    size += es_file_t_write(event_searchfs->target,p+size);

    return size;
}

size_t es_event_proc_suspend_resume_t_write(es_event_proc_suspend_resume_t *event_proc_suspend_resume, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_proc_suspend_resume->target,p+size);

    *((es_proc_suspend_resume_type_t*)(p+size)) = event_proc_suspend_resume->type;
    size += sizeof(es_proc_suspend_resume_type_t);

    return size;
}

size_t es_event_cs_invalidated_t_write(es_event_cs_invalidated_t *event_cs_invalidated, void*p) {
    size_t size = 0;

    return size;
}

size_t es_event_trace_t_write(es_event_trace_t *event_trace, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_trace->target,p+size);

    return size;
}

size_t es_event_remote_thread_create_t_write(es_event_remote_thread_create_t *event_remote_thread_create, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_remote_thread_create->target,p+size);

    size += es_thread_state_t_write(event_remote_thread_create->thread_state,p+size);

    return size;
}

size_t es_event_setuid_t_write(es_event_setuid_t *event_setuid, void*p) {
    size_t size = 0;

    *((uid_t*)(p+size)) = event_setuid->uid;
    size += sizeof(uid_t);

    return size;
}

size_t es_event_setgid_t_write(es_event_setgid_t *event_setgid, void*p) {
    size_t size = 0;

    *((uid_t*)(p+size)) = event_setgid->gid;
    size += sizeof(uid_t);

    return size;
}

size_t es_event_seteuid_t_write(es_event_seteuid_t *event_seteuid, void*p) {
    size_t size = 0;

    *((uid_t*)(p+size)) = event_seteuid->euid;
    size += sizeof(uid_t);

    return size;
}

size_t es_event_setegid_t_write(es_event_setegid_t *event_setegid, void*p) {
    size_t size = 0;

    *((uid_t*)(p+size)) = event_setegid->egid;
    size += sizeof(uid_t);

    return size;
}

size_t es_event_setreuid_t_write(es_event_setreuid_t *event_setreuid, void*p) {
    size_t size = 0;

    *((uid_t*)(p+size)) = event_setreuid->ruid;
    size += sizeof(uid_t);

    *((uid_t*)(p+size)) = event_setreuid->euid;
    size += sizeof(uid_t);

    return size;
}

size_t es_event_setregid_t_write(es_event_setregid_t *event_setregid, void*p) {
    size_t size = 0;

    *((uid_t*)(p+size)) = event_setregid->rgid;
    size += sizeof(uid_t);

    *((uid_t*)(p+size)) = event_setregid->egid;
    size += sizeof(uid_t);

    return size;
}

size_t es_event_authentication_od_t_write(es_event_authentication_od_t *event_authentication_od, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_authentication_od->instigator,p+size);

    size += es_string_token_t_write(&event_authentication_od->record_type,p+size);

    size += es_string_token_t_write(&event_authentication_od->record_name,p+size);

    size += es_string_token_t_write(&event_authentication_od->node_name,p+size);

    size += es_string_token_t_write(&event_authentication_od->db_path,p+size);

    return size;
}

size_t es_event_authentication_touchid_t_write(es_event_authentication_touchid_t *event_authentication_touchid, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_authentication_touchid->instigator,p+size);

    *((es_touchid_mode_t*)(p+size)) = event_authentication_touchid->touchid_mode;
    size += sizeof(es_touchid_mode_t);

    *((bool*)(p+size)) = event_authentication_touchid->has_uid;
    size += sizeof(bool);

    size += es_event_authentication_touchid_t__uid_write(&event_authentication_touchid->uid,p+size);

    return size;
}

size_t es_event_authentication_token_t_write(es_event_authentication_token_t *event_authentication_token, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_authentication_token->instigator,p+size);

    size += es_string_token_t_write(&event_authentication_token->pubkey_hash,p+size);

    size += es_string_token_t_write(&event_authentication_token->token_id,p+size);

    size += es_string_token_t_write(&event_authentication_token->kerberos_principal,p+size);

    return size;
}

size_t es_event_authentication_auto_unlock_t_write(es_event_authentication_auto_unlock_t *event_authentication_auto_unlock, void*p) {
    size_t size = 0;

    size += es_string_token_t_write(&event_authentication_auto_unlock->username,p+size);

    *((es_auto_unlock_type_t*)(p+size)) = event_authentication_auto_unlock->type;
    size += sizeof(es_auto_unlock_type_t);

    return size;
}

size_t es_event_authentication_t_write(es_event_authentication_t *event_authentication, void*p) {
    size_t size = 0;

    *((bool*)(p+size)) = event_authentication->success;
    size += sizeof(bool);

    *((es_authentication_type_t*)(p+size)) = event_authentication->type;
    size += sizeof(es_authentication_type_t);

    size += es_event_authentication_t__data_write(&event_authentication->data,p+size);

    return size;
}

size_t es_event_xp_malware_detected_t_write(es_event_xp_malware_detected_t *event_xp_malware_detected, void*p) {
    size_t size = 0;

    size += es_string_token_t_write(&event_xp_malware_detected->signature_version,p+size);

    size += es_string_token_t_write(&event_xp_malware_detected->malware_identifier,p+size);

    size += es_string_token_t_write(&event_xp_malware_detected->incident_identifier,p+size);

    size += es_string_token_t_write(&event_xp_malware_detected->detected_path,p+size);

    return size;
}

size_t es_event_xp_malware_remediated_t_write(es_event_xp_malware_remediated_t *event_xp_malware_remediated, void*p) {
    size_t size = 0;

    size += es_string_token_t_write(&event_xp_malware_remediated->signature_version,p+size);

    size += es_string_token_t_write(&event_xp_malware_remediated->malware_identifier,p+size);

    size += es_string_token_t_write(&event_xp_malware_remediated->incident_identifier,p+size);

    size += es_string_token_t_write(&event_xp_malware_remediated->action_type,p+size);

    *((bool*)(p+size)) = event_xp_malware_remediated->success;
    size += sizeof(bool);

    size += es_string_token_t_write(&event_xp_malware_remediated->result_description,p+size);

    size += es_string_token_t_write(&event_xp_malware_remediated->remediated_path,p+size);

    size += audit_token_t_write(event_xp_malware_remediated->remediated_process_audit_token,p+size);

    return size;
}

size_t es_event_lw_session_login_t_write(es_event_lw_session_login_t *event_lw_session_login, void*p) {
    size_t size = 0;

    size += es_string_token_t_write(&event_lw_session_login->username,p+size);

    *((es_graphical_session_id_t*)(p+size)) = event_lw_session_login->graphical_session_id;
    size += sizeof(es_graphical_session_id_t);

    return size;
}

size_t es_event_lw_session_logout_t_write(es_event_lw_session_logout_t *event_lw_session_logout, void*p) {
    size_t size = 0;

    size += es_string_token_t_write(&event_lw_session_logout->username,p+size);

    *((es_graphical_session_id_t*)(p+size)) = event_lw_session_logout->graphical_session_id;
    size += sizeof(es_graphical_session_id_t);

    return size;
}

size_t es_event_lw_session_lock_t_write(es_event_lw_session_lock_t *event_lw_session_lock, void*p) {
    size_t size = 0;

    size += es_string_token_t_write(&event_lw_session_lock->username,p+size);

    *((es_graphical_session_id_t*)(p+size)) = event_lw_session_lock->graphical_session_id;
    size += sizeof(es_graphical_session_id_t);

    return size;
}

size_t es_event_lw_session_unlock_t_write(es_event_lw_session_unlock_t *event_lw_session_unlock, void*p) {
    size_t size = 0;

    size += es_string_token_t_write(&event_lw_session_unlock->username,p+size);

    *((es_graphical_session_id_t*)(p+size)) = event_lw_session_unlock->graphical_session_id;
    size += sizeof(es_graphical_session_id_t);

    return size;
}

size_t es_event_screensharing_attach_t_write(es_event_screensharing_attach_t *event_screensharing_attach, void*p) {
    size_t size = 0;

    *((bool*)(p+size)) = event_screensharing_attach->success;
    size += sizeof(bool);

    *((es_address_type_t*)(p+size)) = event_screensharing_attach->source_address_type;
    size += sizeof(es_address_type_t);

    size += es_string_token_t_write(&event_screensharing_attach->source_address,p+size);

    size += es_string_token_t_write(&event_screensharing_attach->viewer_appleid,p+size);

    size += es_string_token_t_write(&event_screensharing_attach->authentication_type,p+size);

    size += es_string_token_t_write(&event_screensharing_attach->authentication_username,p+size);

    size += es_string_token_t_write(&event_screensharing_attach->session_username,p+size);

    *((bool*)(p+size)) = event_screensharing_attach->existing_session;
    size += sizeof(bool);

    *((es_graphical_session_id_t*)(p+size)) = event_screensharing_attach->graphical_session_id;
    size += sizeof(es_graphical_session_id_t);

    return size;
}

size_t es_event_screensharing_detach_t_write(es_event_screensharing_detach_t *event_screensharing_detach, void*p) {
    size_t size = 0;

    *((es_address_type_t*)(p+size)) = event_screensharing_detach->source_address_type;
    size += sizeof(es_address_type_t);

    size += es_string_token_t_write(&event_screensharing_detach->source_address,p+size);

    size += es_string_token_t_write(&event_screensharing_detach->viewer_appleid,p+size);

    *((es_graphical_session_id_t*)(p+size)) = event_screensharing_detach->graphical_session_id;
    size += sizeof(es_graphical_session_id_t);

    return size;
}

size_t es_event_openssh_login_t_write(es_event_openssh_login_t *event_openssh_login, void*p) {
    size_t size = 0;

    *((bool*)(p+size)) = event_openssh_login->success;
    size += sizeof(bool);

    *((es_openssh_login_result_type_t*)(p+size)) = event_openssh_login->result_type;
    size += sizeof(es_openssh_login_result_type_t);

    *((es_address_type_t*)(p+size)) = event_openssh_login->source_address_type;
    size += sizeof(es_address_type_t);

    size += es_string_token_t_write(&event_openssh_login->source_address,p+size);

    size += es_string_token_t_write(&event_openssh_login->username,p+size);

    *((bool*)(p+size)) = event_openssh_login->has_uid;
    size += sizeof(bool);

    size += es_event_openssh_login_t__uid_write(&event_openssh_login->uid,p+size);

    return size;
}

size_t es_event_openssh_logout_t_write(es_event_openssh_logout_t *event_openssh_logout, void*p) {
    size_t size = 0;

    *((es_address_type_t*)(p+size)) = event_openssh_logout->source_address_type;
    size += sizeof(es_address_type_t);

    size += es_string_token_t_write(&event_openssh_logout->source_address,p+size);

    size += es_string_token_t_write(&event_openssh_logout->username,p+size);

    *((uid_t*)(p+size)) = event_openssh_logout->uid;
    size += sizeof(uid_t);

    return size;
}

size_t es_event_login_login_t_write(es_event_login_login_t *event_login_login, void*p) {
    size_t size = 0;

    *((bool*)(p+size)) = event_login_login->success;
    size += sizeof(bool);

    size += es_string_token_t_write(&event_login_login->failure_message,p+size);

    size += es_string_token_t_write(&event_login_login->username,p+size);

    *((bool*)(p+size)) = event_login_login->has_uid;
    size += sizeof(bool);

    size += es_event_login_login_t__uid_write(&event_login_login->uid,p+size);

    return size;
}

size_t es_event_login_logout_t_write(es_event_login_logout_t *event_login_logout, void*p) {
    size_t size = 0;

    size += es_string_token_t_write(&event_login_logout->username,p+size);

    *((uid_t*)(p+size)) = event_login_logout->uid;
    size += sizeof(uid_t);

    return size;
}

size_t es_event_btm_launch_item_add_t_write(es_event_btm_launch_item_add_t *event_btm_launch_item_add, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_btm_launch_item_add->instigator,p+size);

    size += es_process_t_write(event_btm_launch_item_add->app,p+size);

    size += es_btm_launch_item_t_write(event_btm_launch_item_add->item,p+size);

    size += es_string_token_t_write(&event_btm_launch_item_add->executable_path,p+size);

    return size;
}

size_t es_event_btm_launch_item_remove_t_write(es_event_btm_launch_item_remove_t *event_btm_launch_item_remove, void*p) {
    size_t size = 0;

    size += es_process_t_write(event_btm_launch_item_remove->instigator,p+size);

    size += es_process_t_write(event_btm_launch_item_remove->app,p+size);

    size += es_btm_launch_item_t_write(event_btm_launch_item_remove->item,p+size);

    return size;
}

size_t es_result_t_write(es_result_t *result, void*p) {
    size_t size = 0;

    *((es_result_type_t*)(p+size)) = result->result_type;
    size += sizeof(es_result_type_t);

    size += es_result_t__result_write(&result->result,p+size);

    return size;
}

size_t es_message_t_write(es_message_t *message, void*p) {
    size_t size = 0;

    *((uint32_t*)(p+size)) = message->version;
    size += sizeof(uint32_t);

    *((struct timespec*)(p+size)) = message->time;
    size += sizeof(struct timespec);

    *((uint64_t*)(p+size)) = message->mach_time;
    size += sizeof(uint64_t);

    *((uint64_t*)(p+size)) = message->deadline;
    size += sizeof(uint64_t);

    size += es_process_t_write(message->process,p+size);

    *((uint64_t*)(p+size)) = message->seq_num;
    size += sizeof(uint64_t);

    *((es_action_type_t*)(p+size)) = message->action_type;
    size += sizeof(es_action_type_t);

    size += es_message_t__action_write(&message->action,p+size);

    *((es_event_type_t*)(p+size)) = message->event_type;
    size += sizeof(es_event_type_t);

    size += es_events_t_write(&message->event,p+size);

    size += es_thread_t_write(message->thread,p+size);

    *((uint64_t*)(p+size)) = message->global_seq_num;
    size += sizeof(uint64_t);

    *((uint64_t[]*)(p+size)) = message->opaque;
    size += sizeof(uint64_t[]);

    return size;
}
