//
//  swr.c
//  json
//
//  Created by lyf on 2023/8/29.
//

#include "swr.h"
#include <EndpointSecurity/EndpointSecurity.h>

size_t mach_msg_type_descriptor_t_size(mach_msg_type_descriptor_t *mach_msg_type_descriptor) {
    size_t size = 0;
    size += sizeof(natural_t);
    size += sizeof(mach_msg_size_t);
    size += sizeof(unsigned int);
    size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t mach_msg_port_descriptor_t_size(mach_msg_port_descriptor_t *mach_msg_port_descriptor) {
    size_t size = 0;
    size += sizeof(mach_port_t);
    size += sizeof(mach_msg_size_t);
    size += sizeof(unsigned int);
    size += sizeof(mach_msg_type_name_t);
    size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t mach_msg_ool_descriptor32_t_size(mach_msg_ool_descriptor32_t *mach_msg_ool_descriptor32) {
    size_t size = 0;
    size += sizeof(uint32_t);
    size += sizeof(mach_msg_size_t);
    size += sizeof(boolean_t);
    size += sizeof(mach_msg_copy_options_t);
    size += sizeof(unsigned int);
    size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t mach_msg_ool_descriptor64_t_size(mach_msg_ool_descriptor64_t *mach_msg_ool_descriptor64) {
    size_t size = 0;
    size += sizeof(uint64_t);
    size += sizeof(boolean_t);
    size += sizeof(mach_msg_copy_options_t);
    size += sizeof(unsigned int);
    size += sizeof(mach_msg_descriptor_type_t);
    size += sizeof(mach_msg_size_t);
    return size;
}

size_t mach_msg_ool_descriptor_t_size(mach_msg_ool_descriptor_t *mach_msg_ool_descriptor) {
    size_t size = 0;
    size += sizeof(boolean_t);
    size += sizeof(mach_msg_copy_options_t);
    size += sizeof(unsigned int);
    size += sizeof(mach_msg_descriptor_type_t);
    size += sizeof(mach_msg_size_t);
    return size;
}

size_t mach_msg_ool_ports_descriptor32_t_size(mach_msg_ool_ports_descriptor32_t *mach_msg_ool_ports_descriptor32) {
    size_t size = 0;
    size += sizeof(uint32_t);
    size += sizeof(mach_msg_size_t);
    size += sizeof(boolean_t);
    size += sizeof(mach_msg_copy_options_t);
    size += sizeof(mach_msg_type_name_t);
    size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t mach_msg_ool_ports_descriptor64_t_size(mach_msg_ool_ports_descriptor64_t *mach_msg_ool_ports_descriptor64) {
    size_t size = 0;
    size += sizeof(uint64_t);
    size += sizeof(boolean_t);
    size += sizeof(mach_msg_copy_options_t);
    size += sizeof(mach_msg_type_name_t);
    size += sizeof(mach_msg_descriptor_type_t);
    size += sizeof(mach_msg_size_t);
    return size;
}

size_t mach_msg_ool_ports_descriptor_t_size(mach_msg_ool_ports_descriptor_t *mach_msg_ool_ports_descriptor) {
    size_t size = 0;
    size += sizeof(boolean_t);
    size += sizeof(mach_msg_copy_options_t);
    size += sizeof(mach_msg_type_name_t);
    size += sizeof(mach_msg_descriptor_type_t);
    size += sizeof(mach_msg_size_t);
    return size;
}

size_t mach_msg_guarded_port_descriptor32_t_size(mach_msg_guarded_port_descriptor32_t *mach_msg_guarded_port_descriptor32) {
    size_t size = 0;
    size += sizeof(uint32_t);
    size += sizeof(mach_port_name_t);
    size += sizeof(mach_msg_guard_flags_t);
    size += sizeof(mach_msg_type_name_t);
    size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t mach_msg_guarded_port_descriptor64_t_size(mach_msg_guarded_port_descriptor64_t *mach_msg_guarded_port_descriptor64) {
    size_t size = 0;
    size += sizeof(uint64_t);
    size += sizeof(mach_msg_guard_flags_t);
    size += sizeof(mach_msg_type_name_t);
    size += sizeof(mach_msg_descriptor_type_t);
    size += sizeof(mach_port_name_t);
    return size;
}

size_t mach_msg_guarded_port_descriptor_t_size(mach_msg_guarded_port_descriptor_t *mach_msg_guarded_port_descriptor) {
    size_t size = 0;
    size += sizeof(mach_port_context_t);
    size += sizeof(mach_msg_guard_flags_t);
    size += sizeof(mach_msg_type_name_t);
    size += sizeof(mach_msg_descriptor_type_t);
    size += sizeof(mach_port_name_t);
    return size;
}

size_t mach_msg_body_t_size(mach_msg_body_t *mach_msg_body) {
    size_t size = 0;
    size += sizeof(mach_msg_size_t);
    return size;
}

size_t mach_msg_header_t_size(mach_msg_header_t *mach_msg_header) {
    size_t size = 0;
    size += sizeof(mach_msg_bits_t);
    size += sizeof(mach_msg_size_t);
    size += sizeof(mach_port_t);
    size += sizeof(mach_port_t);
    size += sizeof(mach_port_name_t);
    size += sizeof(mach_msg_id_t);
    return size;
}

size_t mach_msg_base_t_size(mach_msg_base_t *mach_msg_base) {
    size_t size = 0;
    size += mach_msg_header_t_size(&(mach_msg_base->header));
    size += mach_msg_body_t_size(&(mach_msg_base->body));
    return size;
}

size_t mach_msg_trailer_t_size(mach_msg_trailer_t *mach_msg_trailer) {
    size_t size = 0;
    size += sizeof(mach_msg_trailer_type_t);
    size += sizeof(mach_msg_trailer_size_t);
    return size;
}

size_t mach_msg_seqno_trailer_t_size(mach_msg_seqno_trailer_t *mach_msg_seqno_trailer) {
    size_t size = 0;
    size += sizeof(mach_msg_trailer_type_t);
    size += sizeof(mach_msg_trailer_size_t);
    size += sizeof(mach_port_seqno_t);
    return size;
}

size_t security_token_t_size(security_token_t *security_token) {
    size_t size = 0;
    size += sizeof(unsigned int) * 2;
    return size;
}

size_t mach_msg_security_trailer_t_size(mach_msg_security_trailer_t *mach_msg_security_trailer) {
    size_t size = 0;
    size += sizeof(mach_msg_trailer_type_t);
    size += sizeof(mach_msg_trailer_size_t);
    size += sizeof(mach_port_seqno_t);
    size += security_token_t_size(&(mach_msg_security_trailer->msgh_sender));
    return size;
}

size_t audit_token_t_size(audit_token_t *audit_token) {
    size_t size = 0;
    size += sizeof(unsigned int) * 8;
    return size;
}

size_t mach_msg_audit_trailer_t_size(mach_msg_audit_trailer_t *mach_msg_audit_trailer) {
    size_t size = 0;
    size += sizeof(mach_msg_trailer_type_t);
    size += sizeof(mach_msg_trailer_size_t);
    size += sizeof(mach_port_seqno_t);
    size += security_token_t_size(&(mach_msg_audit_trailer->msgh_sender));
    size += audit_token_t_size(&(mach_msg_audit_trailer->msgh_audit));
    return size;
}

size_t mach_msg_context_trailer_t_size(mach_msg_context_trailer_t *mach_msg_context_trailer) {
    size_t size = 0;
    size += sizeof(mach_msg_trailer_type_t);
    size += sizeof(mach_msg_trailer_size_t);
    size += sizeof(mach_port_seqno_t);
    size += security_token_t_size(&(mach_msg_context_trailer->msgh_sender));
    size += audit_token_t_size(&(mach_msg_context_trailer->msgh_audit));
    size += sizeof(mach_port_context_t);
    return size;
}

size_t msg_labels_t_size(msg_labels_t *msg_labels) {
    size_t size = 0;
    size += sizeof(mach_port_name_t);
    return size;
}

size_t mach_msg_mac_trailer_t_size(mach_msg_mac_trailer_t *mach_msg_mac_trailer) {
    size_t size = 0;
    size += sizeof(mach_msg_trailer_type_t);
    size += sizeof(mach_msg_trailer_size_t);
    size += sizeof(mach_port_seqno_t);
    size += security_token_t_size(&(mach_msg_mac_trailer->msgh_sender));
    size += audit_token_t_size(&(mach_msg_mac_trailer->msgh_audit));
    size += sizeof(mach_port_context_t);
    size += sizeof(mach_msg_filter_id);
    size += msg_labels_t_size(&(mach_msg_mac_trailer->msgh_labels));
    return size;
}

size_t mach_msg_empty_send_t_size(mach_msg_empty_send_t *mach_msg_empty_send) {
    size_t size = 0;
    size += mach_msg_header_t_size(&(mach_msg_empty_send->header));
    return size;
}

size_t mach_msg_empty_rcv_t_size(mach_msg_empty_rcv_t *mach_msg_empty_rcv) {
    size_t size = 0;
    size += mach_msg_header_t_size(&(mach_msg_empty_rcv->header));
    size += mach_msg_trailer_t_size(&(mach_msg_empty_rcv->trailer));
    return size;
}

size_t es_event_id_t_size(es_event_id_t *event_id) {
    size_t size = 0;
    size += sizeof(uint8_t) * 32;
    return size;
}

size_t es_token_t_size(es_token_t *token) {
    size_t size = 0;
    size += sizeof(size_t);
    if (token->data) {
        size += sizeof(_Bool);
        size += token->size * sizeof(uint8_t);
    } else {
        size += sizeof(_Bool);
    }
    return size;
}

size_t es_string_token_t_size(es_string_token_t *string_token) {
    size_t size = 0;
    size += sizeof(size_t);
    if (string_token->data) {
        size += sizeof(_Bool);
        size += string_token->length * sizeof(char);
    } else {
        size += sizeof(_Bool);
    }
    return size;
}

size_t es_muted_path_t_size(es_muted_path_t *muted_path) {
    size_t size = 0;
    size += sizeof(es_mute_path_type_t);
    size += sizeof(size_t);
    if (muted_path->events) {
        size += sizeof(_Bool);
        size += muted_path->event_count * sizeof(es_event_type_t);
    } else {
        size += sizeof(_Bool);
    }
    size += es_string_token_t_size(&(muted_path->path));
    return size;
}

size_t es_muted_paths_t_size(es_muted_paths_t *muted_paths) {
    size_t size = 0;
    size += sizeof(size_t);
    if (muted_paths->paths) {
        size += sizeof(_Bool);
        for (int i = 0; i < muted_paths->count; i++) {
            size += es_muted_path_t_size((es_muted_path_t*)&(muted_paths->paths[i]));
        }
    } else {
        size += sizeof(_Bool);
    }
    return size;
}

size_t es_muted_process_t_size(es_muted_process_t *muted_process) {
    size_t size = 0;
    size += audit_token_t_size(&(muted_process->audit_token));
    size += sizeof(size_t);
    if (muted_process->events) {
        size += sizeof(_Bool);
        size += muted_process->event_count * sizeof(es_event_type_t);
    } else {
        size += sizeof(_Bool);
    }
    return size;
}

size_t es_muted_processes_t_size(es_muted_processes_t *muted_processes) {
    size_t size = 0;
    size += sizeof(size_t);
    if (muted_processes->processes) {
        size += sizeof(_Bool);
        for (int i = 0; i < muted_processes->count; i++) {
            size += es_muted_process_t_size((es_muted_process_t*)&(muted_processes->processes[i]));
        }
    } else {
        size += sizeof(_Bool);
    }
    return size;
}

size_t ntsid_t_size(ntsid_t *ntsid) {
    size_t size = 0;
    size += sizeof(u_int8_t);
    size += sizeof(u_int8_t);
    size += sizeof(u_int8_t) * 6;
    size += sizeof(u_int32_t) * 16;
    return size;
}

size_t es_file_t_size(es_file_t *file) {
    size_t size = 0;
    size += es_string_token_t_size(&(file->path));
    size += sizeof(bool);
    size += sizeof(struct stat);
    return size;
}

size_t es_thread_t_size(es_thread_t *thread) {
    size_t size = 0;
    size += sizeof(uint64_t);
    return size;
}

size_t es_process_t_size(es_process_t *process) {
    size_t size = 0;
    size += audit_token_t_size(&(process->audit_token));
    size += sizeof(pid_t);
    size += sizeof(pid_t);
    size += sizeof(pid_t);
    size += sizeof(pid_t);
    size += sizeof(uint32_t);
    size += sizeof(bool);
    size += sizeof(bool);
    size += sizeof(uint8_t) * 20;
    size += es_string_token_t_size(&(process->signing_id));
    size += es_string_token_t_size(&(process->team_id));
    size += es_file_t_size(process->executable);
    size += es_file_t_size(process->tty);
    size += sizeof(struct timeval);
    size += audit_token_t_size(&(process->responsible_audit_token));
    size += audit_token_t_size(&(process->parent_audit_token));
    return size;
}

size_t es_thread_state_t_size(es_thread_state_t *thread_state) {
    size_t size = 0;
    size += sizeof(int);
    size += es_token_t_size(&(thread_state->state));
    return size;
}

size_t es_fd_t_size(es_fd_t *fd) {
    size_t size = 0;
    size += sizeof(int32_t);
    size += sizeof(uint32_t);
    return size;
}

size_t es_btm_launch_item_t_size(es_btm_launch_item_t *btm_launch_item) {
    size_t size = 0;
    size += sizeof(es_btm_item_type_t);
    size += sizeof(bool);
    size += sizeof(bool);
    size += sizeof(uid_t);
    size += es_string_token_t_size(&(btm_launch_item->item_url));
    size += es_string_token_t_size(&(btm_launch_item->app_url));
    return size;
}

size_t es_event_exec_t_size(es_event_exec_t *event_exec) {
    size_t size = 0;
    size += es_process_t_size(event_exec->target);
    size += es_token_t_size(&(event_exec->reserved0));
    return size;
}

size_t es_event_open_t_size(es_event_open_t *event_open) {
    size_t size = 0;
    size += sizeof(int32_t);
    size += es_file_t_size(event_open->file);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_kextload_t_size(es_event_kextload_t *event_kextload) {
    size_t size = 0;
    size += es_string_token_t_size(&(event_kextload->identifier));
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_kextunload_t_size(es_event_kextunload_t *event_kextunload) {
    size_t size = 0;
    size += es_string_token_t_size(&(event_kextunload->identifier));
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_unlink_t_size(es_event_unlink_t *event_unlink) {
    size_t size = 0;
    size += es_file_t_size(event_unlink->target);
    size += es_file_t_size(event_unlink->parent_dir);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_mmap_t_size(es_event_mmap_t *event_mmap) {
    size_t size = 0;
    size += sizeof(int32_t);
    size += sizeof(int32_t);
    size += sizeof(int32_t);
    size += sizeof(uint64_t);
    size += es_file_t_size(event_mmap->source);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_link_t_size(es_event_link_t *event_link) {
    size_t size = 0;
    size += es_file_t_size(event_link->source);
    size += es_file_t_size(event_link->target_dir);
    size += es_string_token_t_size(&(event_link->target_filename));
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_mount_t_size(es_event_mount_t *event_mount) {
    size_t size = 0;
    size += sizeof(struct statfs);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_unmount_t_size(es_event_unmount_t *event_unmount) {
    size_t size = 0;
    size += sizeof(struct statfs);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_remount_t_size(es_event_remount_t *event_remount) {
    size_t size = 0;
    size += sizeof(struct statfs);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_fork_t_size(es_event_fork_t *event_fork) {
    size_t size = 0;
    size += es_process_t_size(event_fork->child);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_mprotect_t_size(es_event_mprotect_t *event_mprotect) {
    size_t size = 0;
    size += sizeof(int32_t);
    size += sizeof(user_addr_t);
    size += sizeof(user_size_t);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_signal_t_size(es_event_signal_t *event_signal) {
    size_t size = 0;
    size += sizeof(int);
    size += es_process_t_size(event_signal->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_rename_t_size(es_event_rename_t *event_rename) {
    size_t size = 0;
    size += es_file_t_size(event_rename->source);
    size += sizeof(es_destination_type_t);
    size += es_file_t_size(event_rename->destination.existing_file);
    size += es_file_t_size(event_rename->destination.new_path.dir);
    size += es_string_token_t_size(&(event_rename->destination.new_path.filename));
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_setextattr_t_size(es_event_setextattr_t *event_setextattr) {
    size_t size = 0;
    size += es_file_t_size(event_setextattr->target);
    size += es_string_token_t_size(&(event_setextattr->extattr));
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_getextattr_t_size(es_event_getextattr_t *event_getextattr) {
    size_t size = 0;
    size += es_file_t_size(event_getextattr->target);
    size += es_string_token_t_size(&(event_getextattr->extattr));
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_deleteextattr_t_size(es_event_deleteextattr_t *event_deleteextattr) {
    size_t size = 0;
    size += es_file_t_size(event_deleteextattr->target);
    size += es_string_token_t_size(&(event_deleteextattr->extattr));
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_setmode_t_size(es_event_setmode_t *event_setmode) {
    size_t size = 0;
    size += sizeof(mode_t);
    size += es_file_t_size(event_setmode->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_setflags_t_size(es_event_setflags_t *event_setflags) {
    size_t size = 0;
    size += sizeof(uint32_t);
    size += es_file_t_size(event_setflags->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_setowner_t_size(es_event_setowner_t *event_setowner) {
    size_t size = 0;
    size += sizeof(uid_t);
    size += sizeof(gid_t);
    size += es_file_t_size(event_setowner->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_close_t_size(es_event_close_t *event_close) {
    size_t size = 0;
    size += sizeof(bool);
    size += es_file_t_size(event_close->target);
    return size;
}

size_t es_event_create_t_size(es_event_create_t *event_create) {
    size_t size = 0;
    size += sizeof(es_destination_type_t);
    size += es_file_t_size(event_create->destination.existing_file);
    size += es_file_t_size(event_create->destination.new_path.dir);
    size += es_string_token_t_size(&(event_create->destination.new_path.filename));
    size += sizeof(mode_t);
    size += sizeof(uint8_t) * 16;
    return size;
}

size_t es_event_exit_t_size(es_event_exit_t *event_exit) {
    size_t size = 0;
    size += sizeof(int);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_exchangedata_t_size(es_event_exchangedata_t *event_exchangedata) {
    size_t size = 0;
    size += es_file_t_size(event_exchangedata->file1);
    size += es_file_t_size(event_exchangedata->file2);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_write_t_size(es_event_write_t *event_write) {
    size_t size = 0;
    size += es_file_t_size(event_write->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_truncate_t_size(es_event_truncate_t *event_truncate) {
    size_t size = 0;
    size += es_file_t_size(event_truncate->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_chdir_t_size(es_event_chdir_t *event_chdir) {
    size_t size = 0;
    size += es_file_t_size(event_chdir->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_stat_t_size(es_event_stat_t *event_stat) {
    size_t size = 0;
    size += es_file_t_size(event_stat->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_chroot_t_size(es_event_chroot_t *event_chroot) {
    size_t size = 0;
    size += es_file_t_size(event_chroot->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_listextattr_t_size(es_event_listextattr_t *event_listextattr) {
    size_t size = 0;
    size += es_file_t_size(event_listextattr->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_iokit_open_t_size(es_event_iokit_open_t *event_iokit_open) {
    size_t size = 0;
    size += sizeof(uint32_t);
    size += es_string_token_t_size(&(event_iokit_open->user_client_class));
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_get_task_t_size(es_event_get_task_t *event_get_task) {
    size_t size = 0;
    size += es_process_t_size(event_get_task->target);
    size += sizeof(es_get_task_type_t);
    size += sizeof(uint8_t) * 60;
    return size;
}

size_t es_event_get_task_read_t_size(es_event_get_task_read_t *event_get_task_read) {
    size_t size = 0;
    size += es_process_t_size(event_get_task_read->target);
    size += sizeof(es_get_task_type_t);
    size += sizeof(uint8_t) * 60;
    return size;
}

size_t es_event_get_task_inspect_t_size(es_event_get_task_inspect_t *event_get_task_inspect) {
    size_t size = 0;
    size += es_process_t_size(event_get_task_inspect->target);
    size += sizeof(es_get_task_type_t);
    size += sizeof(uint8_t) * 60;
    return size;
}

size_t es_event_get_task_name_t_size(es_event_get_task_name_t *event_get_task_name) {
    size_t size = 0;
    size += es_process_t_size(event_get_task_name->target);
    size += sizeof(es_get_task_type_t);
    size += sizeof(uint8_t) * 60;
    return size;
}

size_t es_event_getattrlist_t_size(es_event_getattrlist_t *event_getattrlist) {
    size_t size = 0;
    size += sizeof(struct attrlist);
    size += es_file_t_size(event_getattrlist->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_setattrlist_t_size(es_event_setattrlist_t *event_setattrlist) {
    size_t size = 0;
    size += sizeof(struct attrlist);
    size += es_file_t_size(event_setattrlist->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_file_provider_update_t_size(es_event_file_provider_update_t *event_file_provider_update) {
    size_t size = 0;
    size += es_file_t_size(event_file_provider_update->source);
    size += es_string_token_t_size(&(event_file_provider_update->target_path));
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_file_provider_materialize_t_size(es_event_file_provider_materialize_t *event_file_provider_materialize) {
    size_t size = 0;
    size += es_process_t_size(event_file_provider_materialize->instigator);
    size += es_file_t_size(event_file_provider_materialize->source);
    size += es_file_t_size(event_file_provider_materialize->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_readlink_t_size(es_event_readlink_t *event_readlink) {
    size_t size = 0;
    size += es_file_t_size(event_readlink->source);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_lookup_t_size(es_event_lookup_t *event_lookup) {
    size_t size = 0;
    size += es_file_t_size(event_lookup->source_dir);
    size += es_string_token_t_size(&(event_lookup->relative_target));
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_access_t_size(es_event_access_t *event_access) {
    size_t size = 0;
    size += sizeof(int32_t);
    size += es_file_t_size(event_access->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_utimes_t_size(es_event_utimes_t *event_utimes) {
    size_t size = 0;
    size += es_file_t_size(event_utimes->target);
    size += sizeof(struct timespec);
    size += sizeof(struct timespec);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_clone_t_size(es_event_clone_t *event_clone) {
    size_t size = 0;
    size += es_file_t_size(event_clone->source);
    size += es_file_t_size(event_clone->target_dir);
    size += es_string_token_t_size(&(event_clone->target_name));
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_copyfile_t_size(es_event_copyfile_t *event_copyfile) {
    size_t size = 0;
    size += es_file_t_size(event_copyfile->source);
    size += es_file_t_size(event_copyfile->target_file);
    size += es_file_t_size(event_copyfile->target_dir);
    size += es_string_token_t_size(&(event_copyfile->target_name));
    size += sizeof(mode_t);
    size += sizeof(int32_t);
    size += sizeof(uint8_t) * 56;
    return size;
}

size_t es_event_fcntl_t_size(es_event_fcntl_t *event_fcntl) {
    size_t size = 0;
    size += es_file_t_size(event_fcntl->target);
    size += sizeof(int32_t);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_readdir_t_size(es_event_readdir_t *event_readdir) {
    size_t size = 0;
    size += es_file_t_size(event_readdir->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_fsgetpath_t_size(es_event_fsgetpath_t *event_fsgetpath) {
    size_t size = 0;
    size += es_file_t_size(event_fsgetpath->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_settime_t_size(es_event_settime_t *event_settime) {
    size_t size = 0;
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_dup_t_size(es_event_dup_t *event_dup) {
    size_t size = 0;
    size += es_file_t_size(event_dup->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_uipc_bind_t_size(es_event_uipc_bind_t *event_uipc_bind) {
    size_t size = 0;
    size += es_file_t_size(event_uipc_bind->dir);
    size += es_string_token_t_size(&(event_uipc_bind->filename));
    size += sizeof(mode_t);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_uipc_connect_t_size(es_event_uipc_connect_t *event_uipc_connect) {
    size_t size = 0;
    size += es_file_t_size(event_uipc_connect->file);
    size += sizeof(int);
    size += sizeof(int);
    size += sizeof(int);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_setacl_t_size(es_event_setacl_t *event_setacl) {
    size_t size = 0;
    size += es_file_t_size(event_setacl->target);
    size += sizeof(es_set_or_clear_t);
    size += sizeof(acl_t _Nonnull);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_pty_grant_t_size(es_event_pty_grant_t *event_pty_grant) {
    size_t size = 0;
    size += sizeof(dev_t);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_pty_close_t_size(es_event_pty_close_t *event_pty_close) {
    size_t size = 0;
    size += sizeof(dev_t);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_proc_check_t_size(es_event_proc_check_t *event_proc_check) {
    size_t size = 0;
    size += es_process_t_size(event_proc_check->target);
    size += sizeof(es_proc_check_type_t);
    size += sizeof(int);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_searchfs_t_size(es_event_searchfs_t *event_searchfs) {
    size_t size = 0;
    size += sizeof(struct attrlist);
    size += es_file_t_size(event_searchfs->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_proc_suspend_resume_t_size(es_event_proc_suspend_resume_t *event_proc_suspend_resume) {
    size_t size = 0;
    size += es_process_t_size(event_proc_suspend_resume->target);
    size += sizeof(es_proc_suspend_resume_type_t);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_cs_invalidated_t_size(es_event_cs_invalidated_t *event_cs_invalidated) {
    size_t size = 0;
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_trace_t_size(es_event_trace_t *event_trace) {
    size_t size = 0;
    size += es_process_t_size(event_trace->target);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_remote_thread_create_t_size(es_event_remote_thread_create_t *event_remote_thread_create) {
    size_t size = 0;
    size += es_process_t_size(event_remote_thread_create->target);
    size += es_thread_state_t_size(event_remote_thread_create->thread_state);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_setuid_t_size(es_event_setuid_t *event_setuid) {
    size_t size = 0;
    size += sizeof(uid_t);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_setgid_t_size(es_event_setgid_t *event_setgid) {
    size_t size = 0;
    size += sizeof(uid_t);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_seteuid_t_size(es_event_seteuid_t *event_seteuid) {
    size_t size = 0;
    size += sizeof(uid_t);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_setegid_t_size(es_event_setegid_t *event_setegid) {
    size_t size = 0;
    size += sizeof(uid_t);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_setreuid_t_size(es_event_setreuid_t *event_setreuid) {
    size_t size = 0;
    size += sizeof(uid_t);
    size += sizeof(uid_t);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_setregid_t_size(es_event_setregid_t *event_setregid) {
    size_t size = 0;
    size += sizeof(uid_t);
    size += sizeof(uid_t);
    size += sizeof(uint8_t) * 64;
    return size;
}

size_t es_event_authentication_od_t_size(es_event_authentication_od_t *event_authentication_od) {
    size_t size = 0;
    size += es_process_t_size(event_authentication_od->instigator);
    size += es_string_token_t_size(&(event_authentication_od->record_type));
    size += es_string_token_t_size(&(event_authentication_od->record_name));
    size += es_string_token_t_size(&(event_authentication_od->node_name));
    size += es_string_token_t_size(&(event_authentication_od->db_path));
    return size;
}

size_t es_event_authentication_touchid_t_size(es_event_authentication_touchid_t *event_authentication_touchid) {
    size_t size = 0;
    size += es_process_t_size(event_authentication_touchid->instigator);
    size += sizeof(es_touchid_mode_t);
    size += sizeof(bool);
    size += sizeof(uid_t);
    return size;
}

size_t es_event_authentication_token_t_size(es_event_authentication_token_t *event_authentication_token) {
    size_t size = 0;
    size += es_process_t_size(event_authentication_token->instigator);
    size += es_string_token_t_size(&(event_authentication_token->pubkey_hash));
    size += es_string_token_t_size(&(event_authentication_token->token_id));
    size += es_string_token_t_size(&(event_authentication_token->kerberos_principal));
    return size;
}

size_t es_event_authentication_auto_unlock_t_size(es_event_authentication_auto_unlock_t *event_authentication_auto_unlock) {
    size_t size = 0;
    size += es_string_token_t_size(&(event_authentication_auto_unlock->username));
    size += sizeof(es_auto_unlock_type_t);
    return size;
}

size_t es_event_authentication_t_size(es_event_authentication_t *event_authentication) {
    size_t size = 0;
    size += sizeof(bool);
    size += sizeof(es_authentication_type_t);
    size += es_event_authentication_od_t_size(event_authentication->data.od);
    size += es_event_authentication_touchid_t_size(event_authentication->data.touchid);
    size += es_event_authentication_token_t_size(event_authentication->data.token);
    size += es_event_authentication_auto_unlock_t_size(event_authentication->data.auto_unlock);
    return size;
}

size_t es_event_xp_malware_detected_t_size(es_event_xp_malware_detected_t *event_xp_malware_detected) {
    size_t size = 0;
    size += es_string_token_t_size(&(event_xp_malware_detected->signature_version));
    size += es_string_token_t_size(&(event_xp_malware_detected->malware_identifier));
    size += es_string_token_t_size(&(event_xp_malware_detected->incident_identifier));
    size += es_string_token_t_size(&(event_xp_malware_detected->detected_path));
    return size;
}

size_t es_event_xp_malware_remediated_t_size(es_event_xp_malware_remediated_t *event_xp_malware_remediated) {
    size_t size = 0;
    size += es_string_token_t_size(&(event_xp_malware_remediated->signature_version));
    size += es_string_token_t_size(&(event_xp_malware_remediated->malware_identifier));
    size += es_string_token_t_size(&(event_xp_malware_remediated->incident_identifier));
    size += es_string_token_t_size(&(event_xp_malware_remediated->action_type));
    size += sizeof(bool);
    size += es_string_token_t_size(&(event_xp_malware_remediated->result_description));
    size += es_string_token_t_size(&(event_xp_malware_remediated->remediated_path));
    size += audit_token_t_size(event_xp_malware_remediated->remediated_process_audit_token);
    return size;
}

size_t es_event_lw_session_login_t_size(es_event_lw_session_login_t *event_lw_session_login) {
    size_t size = 0;
    size += es_string_token_t_size(&(event_lw_session_login->username));
    size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t es_event_lw_session_logout_t_size(es_event_lw_session_logout_t *event_lw_session_logout) {
    size_t size = 0;
    size += es_string_token_t_size(&(event_lw_session_logout->username));
    size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t es_event_lw_session_lock_t_size(es_event_lw_session_lock_t *event_lw_session_lock) {
    size_t size = 0;
    size += es_string_token_t_size(&(event_lw_session_lock->username));
    size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t es_event_lw_session_unlock_t_size(es_event_lw_session_unlock_t *event_lw_session_unlock) {
    size_t size = 0;
    size += es_string_token_t_size(&(event_lw_session_unlock->username));
    size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t es_event_screensharing_attach_t_size(es_event_screensharing_attach_t *event_screensharing_attach) {
    size_t size = 0;
    size += sizeof(bool);
    size += sizeof(es_address_type_t);
    size += es_string_token_t_size(&(event_screensharing_attach->source_address));
    size += es_string_token_t_size(&(event_screensharing_attach->viewer_appleid));
    size += es_string_token_t_size(&(event_screensharing_attach->authentication_type));
    size += es_string_token_t_size(&(event_screensharing_attach->authentication_username));
    size += es_string_token_t_size(&(event_screensharing_attach->session_username));
    size += sizeof(bool);
    size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t es_event_screensharing_detach_t_size(es_event_screensharing_detach_t *event_screensharing_detach) {
    size_t size = 0;
    size += sizeof(es_address_type_t);
    size += es_string_token_t_size(&(event_screensharing_detach->source_address));
    size += es_string_token_t_size(&(event_screensharing_detach->viewer_appleid));
    size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t es_event_openssh_login_t_size(es_event_openssh_login_t *event_openssh_login) {
    size_t size = 0;
    size += sizeof(bool);
    size += sizeof(es_openssh_login_result_type_t);
    size += sizeof(es_address_type_t);
    size += es_string_token_t_size(&(event_openssh_login->source_address));
    size += es_string_token_t_size(&(event_openssh_login->username));
    size += sizeof(bool);
    size += sizeof(uid_t);
    return size;
}

size_t es_event_openssh_logout_t_size(es_event_openssh_logout_t *event_openssh_logout) {
    size_t size = 0;
    size += sizeof(es_address_type_t);
    size += es_string_token_t_size(&(event_openssh_logout->source_address));
    size += es_string_token_t_size(&(event_openssh_logout->username));
    size += sizeof(uid_t);
    return size;
}

size_t es_event_login_login_t_size(es_event_login_login_t *event_login_login) {
    size_t size = 0;
    size += sizeof(bool);
    size += es_string_token_t_size(&(event_login_login->failure_message));
    size += es_string_token_t_size(&(event_login_login->username));
    size += sizeof(bool);
    size += sizeof(uid_t);
    return size;
}

size_t es_event_login_logout_t_size(es_event_login_logout_t *event_login_logout) {
    size_t size = 0;
    size += es_string_token_t_size(&(event_login_logout->username));
    size += sizeof(uid_t);
    return size;
}

size_t es_event_btm_launch_item_add_t_size(es_event_btm_launch_item_add_t *event_btm_launch_item_add) {
    size_t size = 0;
    size += es_process_t_size(event_btm_launch_item_add->instigator);
    size += es_process_t_size(event_btm_launch_item_add->app);
    size += es_btm_launch_item_t_size(event_btm_launch_item_add->item);
    size += es_string_token_t_size(&(event_btm_launch_item_add->executable_path));
    return size;
}

size_t es_event_btm_launch_item_remove_t_size(es_event_btm_launch_item_remove_t *event_btm_launch_item_remove) {
    size_t size = 0;
    size += es_process_t_size(event_btm_launch_item_remove->instigator);
    size += es_process_t_size(event_btm_launch_item_remove->app);
    size += es_btm_launch_item_t_size(event_btm_launch_item_remove->item);
    return size;
}

size_t es_result_t_size(es_result_t *result) {
    size_t size = 0;
    size += sizeof(es_result_type_t);
    size += sizeof(es_auth_result_t);
    size += sizeof(uint32_t);
    size += sizeof(uint8_t) * 32;
    return size;
}

size_t es_message_t_size(es_message_t *message) {
    size_t size = 0;
    size += sizeof(uint32_t);
    size += sizeof(struct timespec);
    size += sizeof(uint64_t);
    size += sizeof(uint64_t);
    size += es_process_t_size(message->process);
    size += sizeof(uint64_t);
    size += sizeof(es_action_type_t);
    size += es_event_id_t_size(&(message->action.auth));
    size += es_result_t_size(&(message->action.notify));
    size += sizeof(es_event_type_t);
    switch (message->event_type) {
        case ES_EVENT_TYPE_AUTH_EXEC :{
            size += es_event_exec_t_size(&(message->event.exec));
        }break;
        case ES_EVENT_TYPE_AUTH_OPEN :{
            size += es_event_open_t_size(&(message->event.open));
        }break;
        case ES_EVENT_TYPE_AUTH_KEXTLOAD :{
            size += es_event_kextload_t_size(&(message->event.kextload));
        }break;
        case ES_EVENT_TYPE_AUTH_MMAP :{
            size += es_event_mmap_t_size(&(message->event.mmap));
        }break;
        case ES_EVENT_TYPE_AUTH_MPROTECT :{
            size += es_event_mprotect_t_size(&(message->event.mprotect));
        }break;
        case ES_EVENT_TYPE_AUTH_MOUNT :{
            size += es_event_mount_t_size(&(message->event.mount));
        }break;
        case ES_EVENT_TYPE_AUTH_RENAME :{
            size += es_event_rename_t_size(&(message->event.rename));
        }break;
        case ES_EVENT_TYPE_AUTH_SIGNAL :{
            size += es_event_signal_t_size(&(message->event.signal));
        }break;
        case ES_EVENT_TYPE_AUTH_UNLINK :{
            size += es_event_unlink_t_size(&(message->event.unlink));
        }break;
        case ES_EVENT_TYPE_NOTIFY_EXEC :{
            size += es_event_exec_t_size(&(message->event.exec));
        }break;
        case ES_EVENT_TYPE_NOTIFY_OPEN :{
            size += es_event_open_t_size(&(message->event.open));
        }break;
        case ES_EVENT_TYPE_NOTIFY_FORK :{
            size += es_event_fork_t_size(&(message->event.fork));
        }break;
        case ES_EVENT_TYPE_NOTIFY_CLOSE :{
            size += es_event_close_t_size(&(message->event.close));
        }break;
        case ES_EVENT_TYPE_NOTIFY_CREATE :{
            size += es_event_create_t_size(&(message->event.create));
        }break;
        case ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA :{
            size += es_event_exchangedata_t_size(&(message->event.exchangedata));
        }break;
        case ES_EVENT_TYPE_NOTIFY_EXIT :{
            size += es_event_exit_t_size(&(message->event.exit));
        }break;
        case ES_EVENT_TYPE_NOTIFY_GET_TASK :{
            size += es_event_get_task_t_size(&(message->event.get_task));
        }break;
        case ES_EVENT_TYPE_NOTIFY_KEXTLOAD :{
            size += es_event_kextload_t_size(&(message->event.kextload));
        }break;
        case ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD :{
            size += es_event_kextunload_t_size(&(message->event.kextunload));
        }break;
        case ES_EVENT_TYPE_NOTIFY_LINK :{
            size += es_event_link_t_size(&(message->event.link));
        }break;
        case ES_EVENT_TYPE_NOTIFY_MMAP :{
            size += es_event_mmap_t_size(&(message->event.mmap));
        }break;
        case ES_EVENT_TYPE_NOTIFY_MPROTECT :{
            size += es_event_mprotect_t_size(&(message->event.mprotect));
        }break;
        case ES_EVENT_TYPE_NOTIFY_MOUNT :{
            size += es_event_mount_t_size(&(message->event.mount));
        }break;
        case ES_EVENT_TYPE_NOTIFY_UNMOUNT :{
            size += es_event_unmount_t_size(&(message->event.unmount));
        }break;
        case ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN :{
            size += es_event_iokit_open_t_size(&(message->event.iokit_open));
        }break;
        case ES_EVENT_TYPE_NOTIFY_RENAME :{
            size += es_event_rename_t_size(&(message->event.rename));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETATTRLIST :{
            size += es_event_setattrlist_t_size(&(message->event.setattrlist));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETEXTATTR :{
            size += es_event_setextattr_t_size(&(message->event.setextattr));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETFLAGS :{
            size += es_event_setflags_t_size(&(message->event.setflags));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETMODE :{
            size += es_event_setmode_t_size(&(message->event.setmode));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETOWNER :{
            size += es_event_setowner_t_size(&(message->event.setowner));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SIGNAL :{
            size += es_event_signal_t_size(&(message->event.signal));
        }break;
        case ES_EVENT_TYPE_NOTIFY_UNLINK :{
            size += es_event_unlink_t_size(&(message->event.unlink));
        }break;
        case ES_EVENT_TYPE_NOTIFY_WRITE :{
            size += es_event_write_t_size(&(message->event.write));
        }break;
        case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_MATERIALIZE :{
            size += es_event_file_provider_materialize_t_size(&(message->event.file_provider_materialize));
        }break;
        case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE :{
            size += es_event_file_provider_materialize_t_size(&(message->event.file_provider_materialize));
        }break;
        case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_UPDATE :{
            size += es_event_file_provider_update_t_size(&(message->event.file_provider_update));
        }break;
        case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE :{
            size += es_event_file_provider_update_t_size(&(message->event.file_provider_update));
        }break;
        case ES_EVENT_TYPE_AUTH_READLINK :{
            size += es_event_readlink_t_size(&(message->event.readlink));
        }break;
        case ES_EVENT_TYPE_NOTIFY_READLINK :{
            size += es_event_readlink_t_size(&(message->event.readlink));
        }break;
        case ES_EVENT_TYPE_AUTH_TRUNCATE :{
            size += es_event_truncate_t_size(&(message->event.truncate));
        }break;
        case ES_EVENT_TYPE_NOTIFY_TRUNCATE :{
            size += es_event_truncate_t_size(&(message->event.truncate));
        }break;
        case ES_EVENT_TYPE_AUTH_LINK :{
            size += es_event_link_t_size(&(message->event.link));
        }break;
        case ES_EVENT_TYPE_NOTIFY_LOOKUP :{
            size += es_event_lookup_t_size(&(message->event.lookup));
        }break;
        case ES_EVENT_TYPE_AUTH_CREATE :{
            size += es_event_create_t_size(&(message->event.create));
        }break;
        case ES_EVENT_TYPE_AUTH_SETATTRLIST :{
            size += es_event_setattrlist_t_size(&(message->event.setattrlist));
        }break;
        case ES_EVENT_TYPE_AUTH_SETEXTATTR :{
            size += es_event_setextattr_t_size(&(message->event.setextattr));
        }break;
        case ES_EVENT_TYPE_AUTH_SETFLAGS :{
            size += es_event_setflags_t_size(&(message->event.setflags));
        }break;
        case ES_EVENT_TYPE_AUTH_SETMODE :{
            size += es_event_setmode_t_size(&(message->event.setmode));
        }break;
        case ES_EVENT_TYPE_AUTH_SETOWNER :{
            size += es_event_setowner_t_size(&(message->event.setowner));
        }break;
        case ES_EVENT_TYPE_AUTH_CHDIR :{
            size += es_event_chdir_t_size(&(message->event.chdir));
        }break;
        case ES_EVENT_TYPE_NOTIFY_CHDIR :{
            size += es_event_chdir_t_size(&(message->event.chdir));
        }break;
        case ES_EVENT_TYPE_AUTH_GETATTRLIST :{
            size += es_event_getattrlist_t_size(&(message->event.getattrlist));
        }break;
        case ES_EVENT_TYPE_NOTIFY_GETATTRLIST :{
            size += es_event_getattrlist_t_size(&(message->event.getattrlist));
        }break;
        case ES_EVENT_TYPE_NOTIFY_STAT :{
            size += es_event_stat_t_size(&(message->event.stat));
        }break;
        case ES_EVENT_TYPE_NOTIFY_ACCESS :{
            size += es_event_access_t_size(&(message->event.access));
        }break;
        case ES_EVENT_TYPE_AUTH_CHROOT :{
            size += es_event_chroot_t_size(&(message->event.chroot));
        }break;
        case ES_EVENT_TYPE_NOTIFY_CHROOT :{
            size += es_event_chroot_t_size(&(message->event.chroot));
        }break;
        case ES_EVENT_TYPE_AUTH_UTIMES :{
            size += es_event_utimes_t_size(&(message->event.utimes));
        }break;
        case ES_EVENT_TYPE_NOTIFY_UTIMES :{
            size += es_event_utimes_t_size(&(message->event.utimes));
        }break;
        case ES_EVENT_TYPE_AUTH_CLONE :{
            size += es_event_clone_t_size(&(message->event.clone));
        }break;
        case ES_EVENT_TYPE_NOTIFY_CLONE :{
            size += es_event_clone_t_size(&(message->event.clone));
        }break;
        case ES_EVENT_TYPE_NOTIFY_FCNTL :{
            size += es_event_fcntl_t_size(&(message->event.fcntl));
        }break;
        case ES_EVENT_TYPE_AUTH_GETEXTATTR :{
            size += es_event_getextattr_t_size(&(message->event.getextattr));
        }break;
        case ES_EVENT_TYPE_NOTIFY_GETEXTATTR :{
            size += es_event_getextattr_t_size(&(message->event.getextattr));
        }break;
        case ES_EVENT_TYPE_AUTH_LISTEXTATTR :{
            size += es_event_listextattr_t_size(&(message->event.listextattr));
        }break;
        case ES_EVENT_TYPE_NOTIFY_LISTEXTATTR :{
            size += es_event_listextattr_t_size(&(message->event.listextattr));
        }break;
        case ES_EVENT_TYPE_AUTH_READDIR :{
            size += es_event_readdir_t_size(&(message->event.readdir));
        }break;
        case ES_EVENT_TYPE_NOTIFY_READDIR :{
            size += es_event_readdir_t_size(&(message->event.readdir));
        }break;
        case ES_EVENT_TYPE_AUTH_DELETEEXTATTR :{
            size += es_event_deleteextattr_t_size(&(message->event.deleteextattr));
        }break;
        case ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR :{
            size += es_event_deleteextattr_t_size(&(message->event.deleteextattr));
        }break;
        case ES_EVENT_TYPE_AUTH_FSGETPATH :{
            size += es_event_fsgetpath_t_size(&(message->event.fsgetpath));
        }break;
        case ES_EVENT_TYPE_NOTIFY_FSGETPATH :{
            size += es_event_fsgetpath_t_size(&(message->event.fsgetpath));
        }break;
        case ES_EVENT_TYPE_NOTIFY_DUP :{
            size += es_event_dup_t_size(&(message->event.dup));
        }break;
        case ES_EVENT_TYPE_AUTH_SETTIME :{
            size += es_event_settime_t_size(&(message->event.settime));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETTIME :{
            size += es_event_settime_t_size(&(message->event.settime));
        }break;
        case ES_EVENT_TYPE_NOTIFY_UIPC_BIND :{
            size += es_event_uipc_bind_t_size(&(message->event.uipc_bind));
        }break;
        case ES_EVENT_TYPE_AUTH_UIPC_BIND :{
            size += es_event_uipc_bind_t_size(&(message->event.uipc_bind));
        }break;
        case ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT :{
            size += es_event_uipc_connect_t_size(&(message->event.uipc_connect));
        }break;
        case ES_EVENT_TYPE_AUTH_UIPC_CONNECT :{
            size += es_event_uipc_connect_t_size(&(message->event.uipc_connect));
        }break;
        case ES_EVENT_TYPE_AUTH_EXCHANGEDATA :{
            size += es_event_exchangedata_t_size(&(message->event.exchangedata));
        }break;
        case ES_EVENT_TYPE_AUTH_SETACL :{
            size += es_event_setacl_t_size(&(message->event.setacl));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETACL :{
            size += es_event_setacl_t_size(&(message->event.setacl));
        }break;
        case ES_EVENT_TYPE_NOTIFY_PTY_GRANT :{
            size += es_event_pty_grant_t_size(&(message->event.pty_grant));
        }break;
        case ES_EVENT_TYPE_NOTIFY_PTY_CLOSE :{
            size += es_event_pty_close_t_size(&(message->event.pty_close));
        }break;
        case ES_EVENT_TYPE_AUTH_PROC_CHECK :{
            size += es_event_proc_check_t_size(&(message->event.proc_check));
        }break;
        case ES_EVENT_TYPE_NOTIFY_PROC_CHECK :{
            size += es_event_proc_check_t_size(&(message->event.proc_check));
        }break;
        case ES_EVENT_TYPE_AUTH_GET_TASK :{
            size += es_event_get_task_t_size(&(message->event.get_task));
        }break;
        case ES_EVENT_TYPE_AUTH_SEARCHFS :{
            size += es_event_searchfs_t_size(&(message->event.searchfs));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SEARCHFS :{
            size += es_event_searchfs_t_size(&(message->event.searchfs));
        }break;
        case ES_EVENT_TYPE_AUTH_FCNTL :{
            size += es_event_fcntl_t_size(&(message->event.fcntl));
        }break;
        case ES_EVENT_TYPE_AUTH_IOKIT_OPEN :{
            size += es_event_iokit_open_t_size(&(message->event.iokit_open));
        }break;
        case ES_EVENT_TYPE_AUTH_PROC_SUSPEND_RESUME :{
            size += es_event_proc_suspend_resume_t_size(&(message->event.proc_suspend_resume));
        }break;
        case ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME :{
            size += es_event_proc_suspend_resume_t_size(&(message->event.proc_suspend_resume));
        }break;
        case ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED :{
            size += es_event_cs_invalidated_t_size(&(message->event.cs_invalidated));
        }break;
        case ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME :{
            size += es_event_get_task_name_t_size(&(message->event.get_task_name));
        }break;
        case ES_EVENT_TYPE_NOTIFY_TRACE :{
            size += es_event_trace_t_size(&(message->event.trace));
        }break;
        case ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE :{
            size += es_event_remote_thread_create_t_size(&(message->event.remote_thread_create));
        }break;
        case ES_EVENT_TYPE_AUTH_REMOUNT :{
            size += es_event_remount_t_size(&(message->event.remount));
        }break;
        case ES_EVENT_TYPE_NOTIFY_REMOUNT :{
            size += es_event_remount_t_size(&(message->event.remount));
        }break;
        case ES_EVENT_TYPE_AUTH_GET_TASK_READ :{
            size += es_event_get_task_read_t_size(&(message->event.get_task_read));
        }break;
        case ES_EVENT_TYPE_NOTIFY_GET_TASK_READ :{
            size += es_event_get_task_read_t_size(&(message->event.get_task_read));
        }break;
        case ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT :{
            size += es_event_get_task_inspect_t_size(&(message->event.get_task_inspect));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETUID :{
            size += es_event_setuid_t_size(&(message->event.setuid));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETGID :{
            size += es_event_setgid_t_size(&(message->event.setgid));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETEUID :{
            size += es_event_seteuid_t_size(&(message->event.seteuid));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETEGID :{
            size += es_event_setegid_t_size(&(message->event.setegid));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETREUID :{
            size += es_event_setreuid_t_size(&(message->event.setreuid));
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETREGID :{
            size += es_event_setregid_t_size(&(message->event.setregid));
        }break;
        case ES_EVENT_TYPE_AUTH_COPYFILE :{
            size += es_event_copyfile_t_size(&(message->event.copyfile));
        }break;
        case ES_EVENT_TYPE_NOTIFY_COPYFILE :{
            size += es_event_copyfile_t_size(&(message->event.copyfile));
        }break;
        case ES_EVENT_TYPE_NOTIFY_AUTHENTICATION :{
            size += es_event_authentication_t_size(message->event.authentication);
        }break;
        case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED :{
            size += es_event_xp_malware_detected_t_size(message->event.xp_malware_detected);
        }break;
        case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED :{
            size += es_event_xp_malware_remediated_t_size(message->event.xp_malware_remediated);
        }break;
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN :{
            size += es_event_lw_session_login_t_size(message->event.lw_session_login);
        }break;
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT :{
            size += es_event_lw_session_logout_t_size(message->event.lw_session_logout);
        }break;
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK :{
            size += es_event_lw_session_lock_t_size(message->event.lw_session_lock);
        }break;
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK :{
            size += es_event_lw_session_unlock_t_size(message->event.lw_session_unlock);
        }break;
        case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH :{
            size += es_event_screensharing_attach_t_size(message->event.screensharing_attach);
        }break;
        case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH :{
            size += es_event_screensharing_detach_t_size(message->event.screensharing_detach);
        }break;
        case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN :{
            size += es_event_openssh_login_t_size(message->event.openssh_login);
        }break;
        case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT :{
            size += es_event_openssh_logout_t_size(message->event.openssh_logout);
        }break;
        case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN :{
            size += es_event_login_login_t_size(message->event.login_login);
        }break;
        case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT :{
            size += es_event_login_logout_t_size(message->event.login_logout);
        }break;
        case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD :{
            size += es_event_btm_launch_item_add_t_size(message->event.btm_launch_item_add);
        }break;
        case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE :{
            size += es_event_btm_launch_item_remove_t_size(message->event.btm_launch_item_remove);
        }break;
        default:
            break;
    }

    size += es_thread_t_size(message->thread);
    size += sizeof(uint64_t);
    return size;
}
