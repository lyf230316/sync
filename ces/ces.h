// Generated using Sourcery 2.0.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

#ifndef ces_h
#define ces_h

#include <stdio.h>
#include <EndpointSecurity/EndpointSecurity.h>

size_t ces_write_es_message_t(void *p,es_message_t *name_es_message_t);
size_t ces_write_es_message_t_points(void *p,es_message_t *name_es_message_t);
size_t ces_write_audit_token_t(void *p,audit_token_t *name_audit_token_t);
size_t ces_write_es_statfs_t(void *p,es_statfs_t *name_es_statfs_t);
size_t ces_write_es_event_remote_thread_create_t(void *p,es_event_remote_thread_create_t *name_es_event_remote_thread_create_t);
size_t ces_write_es_event_remote_thread_create_t_points(void *p,es_event_remote_thread_create_t *name_es_event_remote_thread_create_t);
size_t ces_write_es_action_type_t(void *p,es_action_type_t *name_es_action_type_t);
size_t ces_write_es_thread_state_t(void *p,es_thread_state_t *name_es_thread_state_t);
size_t ces_write_es_thread_state_t_points(void *p,es_thread_state_t *name_es_thread_state_t);
size_t ces_write_es_event_setacl_t(void *p,es_event_setacl_t *name_es_event_setacl_t);
size_t ces_write_es_event_setacl_t_points(void *p,es_event_setacl_t *name_es_event_setacl_t);
size_t ces_write_es_event_iokit_open_t(void *p,es_event_iokit_open_t *name_es_event_iokit_open_t);
size_t ces_write_es_event_iokit_open_t_points(void *p,es_event_iokit_open_t *name_es_event_iokit_open_t);
size_t ces_write_es_event_readdir_t(void *p,es_event_readdir_t *name_es_event_readdir_t);
size_t ces_write_es_event_readdir_t_points(void *p,es_event_readdir_t *name_es_event_readdir_t);
size_t ces_write_es_event_pty_grant_t(void *p,es_event_pty_grant_t *name_es_event_pty_grant_t);
size_t ces_write_es_event_listextattr_t(void *p,es_event_listextattr_t *name_es_event_listextattr_t);
size_t ces_write_es_event_listextattr_t_points(void *p,es_event_listextattr_t *name_es_event_listextattr_t);
size_t ces_write_es_event_setattrlist_t(void *p,es_event_setattrlist_t *name_es_event_setattrlist_t);
size_t ces_write_es_event_setattrlist_t_points(void *p,es_event_setattrlist_t *name_es_event_setattrlist_t);
size_t ces_write_es_event_stat_t(void *p,es_event_stat_t *name_es_event_stat_t);
size_t ces_write_es_event_stat_t_points(void *p,es_event_stat_t *name_es_event_stat_t);
size_t ces_write_es_event_login_login_t(void *p,es_event_login_login_t *name_es_event_login_login_t);
size_t ces_write_es_event_login_login_t_points(void *p,es_event_login_login_t *name_es_event_login_login_t);
size_t ces_write_es_event_lw_session_unlock_t(void *p,es_event_lw_session_unlock_t *name_es_event_lw_session_unlock_t);
size_t ces_write_es_event_lw_session_unlock_t_points(void *p,es_event_lw_session_unlock_t *name_es_event_lw_session_unlock_t);
size_t ces_write_es_event_lw_session_logout_t(void *p,es_event_lw_session_logout_t *name_es_event_lw_session_logout_t);
size_t ces_write_es_event_lw_session_logout_t_points(void *p,es_event_lw_session_logout_t *name_es_event_lw_session_logout_t);
size_t ces_write_es_event_signal_t(void *p,es_event_signal_t *name_es_event_signal_t);
size_t ces_write_es_event_signal_t_points(void *p,es_event_signal_t *name_es_event_signal_t);
size_t ces_write_es_event_lookup_t(void *p,es_event_lookup_t *name_es_event_lookup_t);
size_t ces_write_es_event_lookup_t_points(void *p,es_event_lookup_t *name_es_event_lookup_t);
size_t ces_write_es_event_setflags_t(void *p,es_event_setflags_t *name_es_event_setflags_t);
size_t ces_write_es_event_setflags_t_points(void *p,es_event_setflags_t *name_es_event_setflags_t);
size_t ces_write_es_file_t(void *p,es_file_t *name_es_file_t);
size_t ces_write_es_file_t_points(void *p,es_file_t *name_es_file_t);
size_t ces_write_es_event_setowner_t(void *p,es_event_setowner_t *name_es_event_setowner_t);
size_t ces_write_es_event_setowner_t_points(void *p,es_event_setowner_t *name_es_event_setowner_t);
size_t ces_write_es_event_fork_t(void *p,es_event_fork_t *name_es_event_fork_t);
size_t ces_write_es_event_fork_t_points(void *p,es_event_fork_t *name_es_event_fork_t);
size_t ces_write_es_proc_check_type_t(void *p,es_proc_check_type_t *name_es_proc_check_type_t);
size_t ces_write_es_event_unlink_t(void *p,es_event_unlink_t *name_es_event_unlink_t);
size_t ces_write_es_event_unlink_t_points(void *p,es_event_unlink_t *name_es_event_unlink_t);
size_t ces_write_es_event_mmap_t(void *p,es_event_mmap_t *name_es_event_mmap_t);
size_t ces_write_es_event_mmap_t_points(void *p,es_event_mmap_t *name_es_event_mmap_t);
size_t ces_write_es_thread_t(void *p,es_thread_t *name_es_thread_t);
size_t ces_write_es_set_or_clear_t(void *p,es_set_or_clear_t *name_es_set_or_clear_t);
size_t ces_write_es_event_authentication_t(void *p,es_event_authentication_t *name_es_event_authentication_t);
size_t ces_write_es_event_lw_session_lock_t(void *p,es_event_lw_session_lock_t *name_es_event_lw_session_lock_t);
size_t ces_write_es_event_lw_session_lock_t_points(void *p,es_event_lw_session_lock_t *name_es_event_lw_session_lock_t);
size_t ces_write_es_event_screensharing_detach_t(void *p,es_event_screensharing_detach_t *name_es_event_screensharing_detach_t);
size_t ces_write_es_event_screensharing_detach_t_points(void *p,es_event_screensharing_detach_t *name_es_event_screensharing_detach_t);
size_t ces_write_es_event_get_task_read_t(void *p,es_event_get_task_read_t *name_es_event_get_task_read_t);
size_t ces_write_es_event_get_task_read_t_points(void *p,es_event_get_task_read_t *name_es_event_get_task_read_t);
size_t ces_write_es_event_truncate_t(void *p,es_event_truncate_t *name_es_event_truncate_t);
size_t ces_write_es_event_truncate_t_points(void *p,es_event_truncate_t *name_es_event_truncate_t);
size_t ces_write_es_event_remount_t(void *p,es_event_remount_t *name_es_event_remount_t);
size_t ces_write_es_event_remount_t_points(void *p,es_event_remount_t *name_es_event_remount_t);
size_t ces_write_es_event_chroot_t(void *p,es_event_chroot_t *name_es_event_chroot_t);
size_t ces_write_es_event_chroot_t_points(void *p,es_event_chroot_t *name_es_event_chroot_t);
size_t ces_write_es_event_dup_t(void *p,es_event_dup_t *name_es_event_dup_t);
size_t ces_write_es_event_dup_t_points(void *p,es_event_dup_t *name_es_event_dup_t);
size_t ces_write_es_event_setreuid_t(void *p,es_event_setreuid_t *name_es_event_setreuid_t);
size_t ces_write_es_event_setmode_t(void *p,es_event_setmode_t *name_es_event_setmode_t);
size_t ces_write_es_event_setmode_t_points(void *p,es_event_setmode_t *name_es_event_setmode_t);
size_t ces_write_es_event_getattrlist_t(void *p,es_event_getattrlist_t *name_es_event_getattrlist_t);
size_t ces_write_es_event_getattrlist_t_points(void *p,es_event_getattrlist_t *name_es_event_getattrlist_t);
size_t ces_write_es_string_token_t(void *p,es_string_token_t *name_es_string_token_t);
size_t ces_write_es_string_token_t_points(void *p,es_string_token_t *name_es_string_token_t);
size_t ces_write_es_event_open_t(void *p,es_event_open_t *name_es_event_open_t);
size_t ces_write_es_event_open_t_points(void *p,es_event_open_t *name_es_event_open_t);
size_t ces_write_es_event_access_t(void *p,es_event_access_t *name_es_event_access_t);
size_t ces_write_es_event_access_t_points(void *p,es_event_access_t *name_es_event_access_t);
size_t ces_write_es_event_exec_t(void *p,es_event_exec_t *name_es_event_exec_t);
size_t ces_write_es_event_exec_t_points(void *p,es_event_exec_t *name_es_event_exec_t);
size_t ces_write_es_event_seteuid_t(void *p,es_event_seteuid_t *name_es_event_seteuid_t);
size_t ces_write_es_event_lw_session_login_t(void *p,es_event_lw_session_login_t *name_es_event_lw_session_login_t);
size_t ces_write_es_event_lw_session_login_t_points(void *p,es_event_lw_session_login_t *name_es_event_lw_session_login_t);
size_t ces_write_es_event_readlink_t(void *p,es_event_readlink_t *name_es_event_readlink_t);
size_t ces_write_es_event_readlink_t_points(void *p,es_event_readlink_t *name_es_event_readlink_t);
size_t ces_write_es_openssh_login_result_type_t(void *p,es_openssh_login_result_type_t *name_es_openssh_login_result_type_t);
size_t ces_write_es_token_t(void *p,es_token_t *name_es_token_t);
size_t ces_write_es_token_t_points(void *p,es_token_t *name_es_token_t);
size_t ces_write_es_authentication_type_t(void *p,es_authentication_type_t *name_es_authentication_type_t);
size_t ces_write_es_event_openssh_logout_t(void *p,es_event_openssh_logout_t *name_es_event_openssh_logout_t);
size_t ces_write_es_event_openssh_logout_t_points(void *p,es_event_openssh_logout_t *name_es_event_openssh_logout_t);
size_t ces_write_es_event_trace_t(void *p,es_event_trace_t *name_es_event_trace_t);
size_t ces_write_es_event_trace_t_points(void *p,es_event_trace_t *name_es_event_trace_t);
size_t ces_write_es_btm_item_type_t(void *p,es_btm_item_type_t *name_es_btm_item_type_t);
size_t ces_write_es_event_copyfile_t(void *p,es_event_copyfile_t *name_es_event_copyfile_t);
size_t ces_write_es_event_copyfile_t_points(void *p,es_event_copyfile_t *name_es_event_copyfile_t);
size_t ces_write_es_event_chdir_t(void *p,es_event_chdir_t *name_es_event_chdir_t);
size_t ces_write_es_event_chdir_t_points(void *p,es_event_chdir_t *name_es_event_chdir_t);
size_t ces_write_es_address_type_t(void *p,es_address_type_t *name_es_address_type_t);
size_t ces_write_es_get_task_type_t(void *p,es_get_task_type_t *name_es_get_task_type_t);
size_t ces_write_es_event_get_task_name_t(void *p,es_event_get_task_name_t *name_es_event_get_task_name_t);
size_t ces_write_es_event_get_task_name_t_points(void *p,es_event_get_task_name_t *name_es_event_get_task_name_t);
size_t ces_write_es_event_file_provider_materialize_t(void *p,es_event_file_provider_materialize_t *name_es_event_file_provider_materialize_t);
size_t ces_write_es_event_file_provider_materialize_t_points(void *p,es_event_file_provider_materialize_t *name_es_event_file_provider_materialize_t);
size_t ces_write_es_btm_launch_item_t(void *p,es_btm_launch_item_t *name_es_btm_launch_item_t);
size_t ces_write_es_btm_launch_item_t_points(void *p,es_btm_launch_item_t *name_es_btm_launch_item_t);
size_t ces_write_es_event_screensharing_attach_t(void *p,es_event_screensharing_attach_t *name_es_event_screensharing_attach_t);
size_t ces_write_es_event_screensharing_attach_t_points(void *p,es_event_screensharing_attach_t *name_es_event_screensharing_attach_t);
size_t ces_write_es_destination_type_t(void *p,es_destination_type_t *name_es_destination_type_t);
size_t ces_write_es_event_exchangedata_t(void *p,es_event_exchangedata_t *name_es_event_exchangedata_t);
size_t ces_write_es_event_exchangedata_t_points(void *p,es_event_exchangedata_t *name_es_event_exchangedata_t);
size_t ces_write_es_event_setegid_t(void *p,es_event_setegid_t *name_es_event_setegid_t);
size_t ces_write_es_event_xp_malware_detected_t(void *p,es_event_xp_malware_detected_t *name_es_event_xp_malware_detected_t);
size_t ces_write_es_event_xp_malware_detected_t_points(void *p,es_event_xp_malware_detected_t *name_es_event_xp_malware_detected_t);
size_t ces_write_es_event_close_t(void *p,es_event_close_t *name_es_event_close_t);
size_t ces_write_es_event_close_t_points(void *p,es_event_close_t *name_es_event_close_t);
size_t ces_write_es_event_get_task_t(void *p,es_event_get_task_t *name_es_event_get_task_t);
size_t ces_write_es_event_get_task_t_points(void *p,es_event_get_task_t *name_es_event_get_task_t);
size_t ces_write_es_event_btm_launch_item_add_t(void *p,es_event_btm_launch_item_add_t *name_es_event_btm_launch_item_add_t);
size_t ces_write_es_event_btm_launch_item_add_t_points(void *p,es_event_btm_launch_item_add_t *name_es_event_btm_launch_item_add_t);
size_t ces_write_es_event_deleteextattr_t(void *p,es_event_deleteextattr_t *name_es_event_deleteextattr_t);
size_t ces_write_es_event_deleteextattr_t_points(void *p,es_event_deleteextattr_t *name_es_event_deleteextattr_t);
size_t ces_write_es_event_unmount_t(void *p,es_event_unmount_t *name_es_event_unmount_t);
size_t ces_write_es_event_unmount_t_points(void *p,es_event_unmount_t *name_es_event_unmount_t);
size_t ces_write_es_event_mount_t(void *p,es_event_mount_t *name_es_event_mount_t);
size_t ces_write_es_event_mount_t_points(void *p,es_event_mount_t *name_es_event_mount_t);
size_t ces_write_es_event_cs_invalidated_t(void *p,es_event_cs_invalidated_t *name_es_event_cs_invalidated_t);
size_t ces_write_es_event_clone_t(void *p,es_event_clone_t *name_es_event_clone_t);
size_t ces_write_es_event_clone_t_points(void *p,es_event_clone_t *name_es_event_clone_t);
size_t ces_write_es_event_setextattr_t(void *p,es_event_setextattr_t *name_es_event_setextattr_t);
size_t ces_write_es_event_setextattr_t_points(void *p,es_event_setextattr_t *name_es_event_setextattr_t);
size_t ces_write_es_event_kextload_t(void *p,es_event_kextload_t *name_es_event_kextload_t);
size_t ces_write_es_event_kextload_t_points(void *p,es_event_kextload_t *name_es_event_kextload_t);
size_t ces_write_es_event_login_logout_t(void *p,es_event_login_logout_t *name_es_event_login_logout_t);
size_t ces_write_es_event_login_logout_t_points(void *p,es_event_login_logout_t *name_es_event_login_logout_t);
size_t ces_write_es_event_settime_t(void *p,es_event_settime_t *name_es_event_settime_t);
size_t ces_write_es_event_get_task_inspect_t(void *p,es_event_get_task_inspect_t *name_es_event_get_task_inspect_t);
size_t ces_write_es_event_get_task_inspect_t_points(void *p,es_event_get_task_inspect_t *name_es_event_get_task_inspect_t);
size_t ces_write_es_event_utimes_t(void *p,es_event_utimes_t *name_es_event_utimes_t);
size_t ces_write_es_event_utimes_t_points(void *p,es_event_utimes_t *name_es_event_utimes_t);
size_t ces_write_es_event_type_t(void *p,es_event_type_t *name_es_event_type_t);
size_t ces_write_es_event_searchfs_t(void *p,es_event_searchfs_t *name_es_event_searchfs_t);
size_t ces_write_es_event_searchfs_t_points(void *p,es_event_searchfs_t *name_es_event_searchfs_t);
size_t ces_write_es_event_file_provider_update_t(void *p,es_event_file_provider_update_t *name_es_event_file_provider_update_t);
size_t ces_write_es_event_file_provider_update_t_points(void *p,es_event_file_provider_update_t *name_es_event_file_provider_update_t);
size_t ces_write_es_event_uipc_bind_t(void *p,es_event_uipc_bind_t *name_es_event_uipc_bind_t);
size_t ces_write_es_event_uipc_bind_t_points(void *p,es_event_uipc_bind_t *name_es_event_uipc_bind_t);
size_t ces_write_es_event_create_t(void *p,es_event_create_t *name_es_event_create_t);
size_t ces_write_es_event_getextattr_t(void *p,es_event_getextattr_t *name_es_event_getextattr_t);
size_t ces_write_es_event_getextattr_t_points(void *p,es_event_getextattr_t *name_es_event_getextattr_t);
size_t ces_write_es_event_rename_t(void *p,es_event_rename_t *name_es_event_rename_t);
size_t ces_write_es_event_rename_t_points(void *p,es_event_rename_t *name_es_event_rename_t);
size_t ces_write_es_event_setregid_t(void *p,es_event_setregid_t *name_es_event_setregid_t);
size_t ces_write_es_event_proc_suspend_resume_t(void *p,es_event_proc_suspend_resume_t *name_es_event_proc_suspend_resume_t);
size_t ces_write_es_event_proc_suspend_resume_t_points(void *p,es_event_proc_suspend_resume_t *name_es_event_proc_suspend_resume_t);
size_t ces_write_es_event_exit_t(void *p,es_event_exit_t *name_es_event_exit_t);
size_t ces_write_es_event_pty_close_t(void *p,es_event_pty_close_t *name_es_event_pty_close_t);
size_t ces_write_es_event_kextunload_t(void *p,es_event_kextunload_t *name_es_event_kextunload_t);
size_t ces_write_es_event_kextunload_t_points(void *p,es_event_kextunload_t *name_es_event_kextunload_t);
size_t ces_write_es_event_fcntl_t(void *p,es_event_fcntl_t *name_es_event_fcntl_t);
size_t ces_write_es_event_fcntl_t_points(void *p,es_event_fcntl_t *name_es_event_fcntl_t);
size_t ces_write_es_event_btm_launch_item_remove_t(void *p,es_event_btm_launch_item_remove_t *name_es_event_btm_launch_item_remove_t);
size_t ces_write_es_event_btm_launch_item_remove_t_points(void *p,es_event_btm_launch_item_remove_t *name_es_event_btm_launch_item_remove_t);
size_t ces_write_es_event_write_t(void *p,es_event_write_t *name_es_event_write_t);
size_t ces_write_es_event_write_t_points(void *p,es_event_write_t *name_es_event_write_t);
size_t ces_write_es_event_uipc_connect_t(void *p,es_event_uipc_connect_t *name_es_event_uipc_connect_t);
size_t ces_write_es_event_uipc_connect_t_points(void *p,es_event_uipc_connect_t *name_es_event_uipc_connect_t);
size_t ces_write_es_process_t(void *p,es_process_t *name_es_process_t);
size_t ces_write_es_process_t_points(void *p,es_process_t *name_es_process_t);
size_t ces_write_es_event_xp_malware_remediated_t(void *p,es_event_xp_malware_remediated_t *name_es_event_xp_malware_remediated_t);
size_t ces_write_es_event_xp_malware_remediated_t_points(void *p,es_event_xp_malware_remediated_t *name_es_event_xp_malware_remediated_t);
size_t ces_write_es_event_proc_check_t(void *p,es_event_proc_check_t *name_es_event_proc_check_t);
size_t ces_write_es_event_proc_check_t_points(void *p,es_event_proc_check_t *name_es_event_proc_check_t);
size_t ces_write_es_event_mprotect_t(void *p,es_event_mprotect_t *name_es_event_mprotect_t);
size_t ces_write_es_proc_suspend_resume_type_t(void *p,es_proc_suspend_resume_type_t *name_es_proc_suspend_resume_type_t);
size_t ces_write_es_event_openssh_login_t(void *p,es_event_openssh_login_t *name_es_event_openssh_login_t);
size_t ces_write_es_event_openssh_login_t_points(void *p,es_event_openssh_login_t *name_es_event_openssh_login_t);
size_t ces_write_es_event_fsgetpath_t(void *p,es_event_fsgetpath_t *name_es_event_fsgetpath_t);
size_t ces_write_es_event_fsgetpath_t_points(void *p,es_event_fsgetpath_t *name_es_event_fsgetpath_t);
size_t ces_write_es_event_link_t(void *p,es_event_link_t *name_es_event_link_t);
size_t ces_write_es_event_link_t_points(void *p,es_event_link_t *name_es_event_link_t);
size_t ces_write_es_event_setgid_t(void *p,es_event_setgid_t *name_es_event_setgid_t);
size_t ces_write_es_event_setuid_t(void *p,es_event_setuid_t *name_es_event_setuid_t);

es_message_t* ces_read_es_message_t(void* p, size_t* size);
audit_token_t* ces_read_audit_token_t(void* p, size_t* size);
es_statfs_t* ces_read_es_statfs_t(void* p, size_t* size);
es_event_remote_thread_create_t* ces_read_es_event_remote_thread_create_t(void* p, size_t* size);
es_action_type_t* ces_read_es_action_type_t(void* p, size_t* size);
es_thread_state_t* ces_read_es_thread_state_t(void* p, size_t* size);
es_event_setacl_t* ces_read_es_event_setacl_t(void* p, size_t* size);
es_event_iokit_open_t* ces_read_es_event_iokit_open_t(void* p, size_t* size);
es_event_readdir_t* ces_read_es_event_readdir_t(void* p, size_t* size);
es_event_pty_grant_t* ces_read_es_event_pty_grant_t(void* p, size_t* size);
es_event_listextattr_t* ces_read_es_event_listextattr_t(void* p, size_t* size);
es_event_setattrlist_t* ces_read_es_event_setattrlist_t(void* p, size_t* size);
es_event_stat_t* ces_read_es_event_stat_t(void* p, size_t* size);
es_event_login_login_t* ces_read_es_event_login_login_t(void* p, size_t* size);
es_event_lw_session_unlock_t* ces_read_es_event_lw_session_unlock_t(void* p, size_t* size);
es_event_lw_session_logout_t* ces_read_es_event_lw_session_logout_t(void* p, size_t* size);
es_event_signal_t* ces_read_es_event_signal_t(void* p, size_t* size);
es_event_lookup_t* ces_read_es_event_lookup_t(void* p, size_t* size);
es_event_setflags_t* ces_read_es_event_setflags_t(void* p, size_t* size);
es_file_t* ces_read_es_file_t(void* p, size_t* size);
es_event_setowner_t* ces_read_es_event_setowner_t(void* p, size_t* size);
es_event_fork_t* ces_read_es_event_fork_t(void* p, size_t* size);
es_proc_check_type_t* ces_read_es_proc_check_type_t(void* p, size_t* size);
es_event_unlink_t* ces_read_es_event_unlink_t(void* p, size_t* size);
es_event_mmap_t* ces_read_es_event_mmap_t(void* p, size_t* size);
es_thread_t* ces_read_es_thread_t(void* p, size_t* size);
es_set_or_clear_t* ces_read_es_set_or_clear_t(void* p, size_t* size);
es_event_authentication_t* ces_read_es_event_authentication_t(void* p, size_t* size);
es_event_lw_session_lock_t* ces_read_es_event_lw_session_lock_t(void* p, size_t* size);
es_event_screensharing_detach_t* ces_read_es_event_screensharing_detach_t(void* p, size_t* size);
es_event_get_task_read_t* ces_read_es_event_get_task_read_t(void* p, size_t* size);
es_event_truncate_t* ces_read_es_event_truncate_t(void* p, size_t* size);
es_event_remount_t* ces_read_es_event_remount_t(void* p, size_t* size);
es_event_chroot_t* ces_read_es_event_chroot_t(void* p, size_t* size);
es_event_dup_t* ces_read_es_event_dup_t(void* p, size_t* size);
es_event_setreuid_t* ces_read_es_event_setreuid_t(void* p, size_t* size);
es_event_setmode_t* ces_read_es_event_setmode_t(void* p, size_t* size);
es_event_getattrlist_t* ces_read_es_event_getattrlist_t(void* p, size_t* size);
es_string_token_t* ces_read_es_string_token_t(void* p, size_t* size);
es_event_open_t* ces_read_es_event_open_t(void* p, size_t* size);
es_event_access_t* ces_read_es_event_access_t(void* p, size_t* size);
es_event_exec_t* ces_read_es_event_exec_t(void* p, size_t* size);
es_event_seteuid_t* ces_read_es_event_seteuid_t(void* p, size_t* size);
es_event_lw_session_login_t* ces_read_es_event_lw_session_login_t(void* p, size_t* size);
es_event_readlink_t* ces_read_es_event_readlink_t(void* p, size_t* size);
es_openssh_login_result_type_t* ces_read_es_openssh_login_result_type_t(void* p, size_t* size);
es_token_t* ces_read_es_token_t(void* p, size_t* size);
es_authentication_type_t* ces_read_es_authentication_type_t(void* p, size_t* size);
es_event_openssh_logout_t* ces_read_es_event_openssh_logout_t(void* p, size_t* size);
es_event_trace_t* ces_read_es_event_trace_t(void* p, size_t* size);
es_btm_item_type_t* ces_read_es_btm_item_type_t(void* p, size_t* size);
es_event_copyfile_t* ces_read_es_event_copyfile_t(void* p, size_t* size);
es_event_chdir_t* ces_read_es_event_chdir_t(void* p, size_t* size);
es_address_type_t* ces_read_es_address_type_t(void* p, size_t* size);
es_get_task_type_t* ces_read_es_get_task_type_t(void* p, size_t* size);
es_event_get_task_name_t* ces_read_es_event_get_task_name_t(void* p, size_t* size);
es_event_file_provider_materialize_t* ces_read_es_event_file_provider_materialize_t(void* p, size_t* size);
es_btm_launch_item_t* ces_read_es_btm_launch_item_t(void* p, size_t* size);
es_event_screensharing_attach_t* ces_read_es_event_screensharing_attach_t(void* p, size_t* size);
es_destination_type_t* ces_read_es_destination_type_t(void* p, size_t* size);
es_event_exchangedata_t* ces_read_es_event_exchangedata_t(void* p, size_t* size);
es_event_setegid_t* ces_read_es_event_setegid_t(void* p, size_t* size);
es_event_xp_malware_detected_t* ces_read_es_event_xp_malware_detected_t(void* p, size_t* size);
es_event_close_t* ces_read_es_event_close_t(void* p, size_t* size);
es_event_get_task_t* ces_read_es_event_get_task_t(void* p, size_t* size);
es_event_btm_launch_item_add_t* ces_read_es_event_btm_launch_item_add_t(void* p, size_t* size);
es_event_deleteextattr_t* ces_read_es_event_deleteextattr_t(void* p, size_t* size);
es_event_unmount_t* ces_read_es_event_unmount_t(void* p, size_t* size);
es_event_mount_t* ces_read_es_event_mount_t(void* p, size_t* size);
es_event_cs_invalidated_t* ces_read_es_event_cs_invalidated_t(void* p, size_t* size);
es_event_clone_t* ces_read_es_event_clone_t(void* p, size_t* size);
es_event_setextattr_t* ces_read_es_event_setextattr_t(void* p, size_t* size);
es_event_kextload_t* ces_read_es_event_kextload_t(void* p, size_t* size);
es_event_login_logout_t* ces_read_es_event_login_logout_t(void* p, size_t* size);
es_event_settime_t* ces_read_es_event_settime_t(void* p, size_t* size);
es_event_get_task_inspect_t* ces_read_es_event_get_task_inspect_t(void* p, size_t* size);
es_event_utimes_t* ces_read_es_event_utimes_t(void* p, size_t* size);
es_event_type_t* ces_read_es_event_type_t(void* p, size_t* size);
es_event_searchfs_t* ces_read_es_event_searchfs_t(void* p, size_t* size);
es_event_file_provider_update_t* ces_read_es_event_file_provider_update_t(void* p, size_t* size);
es_event_uipc_bind_t* ces_read_es_event_uipc_bind_t(void* p, size_t* size);
es_event_create_t* ces_read_es_event_create_t(void* p, size_t* size);
es_event_getextattr_t* ces_read_es_event_getextattr_t(void* p, size_t* size);
es_event_rename_t* ces_read_es_event_rename_t(void* p, size_t* size);
es_event_setregid_t* ces_read_es_event_setregid_t(void* p, size_t* size);
es_event_proc_suspend_resume_t* ces_read_es_event_proc_suspend_resume_t(void* p, size_t* size);
es_event_exit_t* ces_read_es_event_exit_t(void* p, size_t* size);
es_event_pty_close_t* ces_read_es_event_pty_close_t(void* p, size_t* size);
es_event_kextunload_t* ces_read_es_event_kextunload_t(void* p, size_t* size);
es_event_fcntl_t* ces_read_es_event_fcntl_t(void* p, size_t* size);
es_event_btm_launch_item_remove_t* ces_read_es_event_btm_launch_item_remove_t(void* p, size_t* size);
es_event_write_t* ces_read_es_event_write_t(void* p, size_t* size);
es_event_uipc_connect_t* ces_read_es_event_uipc_connect_t(void* p, size_t* size);
es_process_t* ces_read_es_process_t(void* p, size_t* size);
es_event_xp_malware_remediated_t* ces_read_es_event_xp_malware_remediated_t(void* p, size_t* size);
es_event_proc_check_t* ces_read_es_event_proc_check_t(void* p, size_t* size);
es_event_mprotect_t* ces_read_es_event_mprotect_t(void* p, size_t* size);
es_proc_suspend_resume_type_t* ces_read_es_proc_suspend_resume_type_t(void* p, size_t* size);
es_event_openssh_login_t* ces_read_es_event_openssh_login_t(void* p, size_t* size);
es_event_fsgetpath_t* ces_read_es_event_fsgetpath_t(void* p, size_t* size);
es_event_link_t* ces_read_es_event_link_t(void* p, size_t* size);
es_event_setgid_t* ces_read_es_event_setgid_t(void* p, size_t* size);
es_event_setuid_t* ces_read_es_event_setuid_t(void* p, size_t* size);

#endif /* ces_h */
