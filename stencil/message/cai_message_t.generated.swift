// Generated using Sourcery 2.0.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
//
//  cai_message_t.swift
//  ESD
//
//  Created by msi on 2023/4/9.
//

/* argument
["events": {
    "ES_EVENT_TYPE_AUTH_CHDIR" = "es_event_chdir_t";
    "ES_EVENT_TYPE_AUTH_CHROOT" = "es_event_chroot_t";
    "ES_EVENT_TYPE_AUTH_CLONE" = "es_event_clone_t";
    "ES_EVENT_TYPE_AUTH_COPYFILE" = "es_event_copyfile_t";
    "ES_EVENT_TYPE_AUTH_CREATE" = "es_event_create_t";
    "ES_EVENT_TYPE_AUTH_DELETEEXTATTR" = "es_event_deleteextattr_t";
    "ES_EVENT_TYPE_AUTH_EXCHANGEDATA" = "es_event_exchangedata_t";
    "ES_EVENT_TYPE_AUTH_EXEC" = "es_event_exec_t";
    "ES_EVENT_TYPE_AUTH_FCNTL" = "es_event_fcntl_t";
    "ES_EVENT_TYPE_AUTH_FILE_PROVIDER_MATERIALIZE" = "es_event_file_provider_materialize_t";
    "ES_EVENT_TYPE_AUTH_FILE_PROVIDER_UPDATE" = "es_event_file_provider_update_t";
    "ES_EVENT_TYPE_AUTH_FSGETPATH" = "es_event_fsgetpath_t";
    "ES_EVENT_TYPE_AUTH_GETATTRLIST" = "es_event_getattrlist_t";
    "ES_EVENT_TYPE_AUTH_GETEXTATTR" = "es_event_getextattr_t";
    "ES_EVENT_TYPE_AUTH_GET_TASK" = "es_event_get_task_t";
    "ES_EVENT_TYPE_AUTH_GET_TASK_READ" = "es_event_get_task_read_t";
    "ES_EVENT_TYPE_AUTH_IOKIT_OPEN" = "es_event_iokit_open_t";
    "ES_EVENT_TYPE_AUTH_KEXTLOAD" = "es_event_kextload_t";
    "ES_EVENT_TYPE_AUTH_LINK" = "es_event_link_t";
    "ES_EVENT_TYPE_AUTH_LISTEXTATTR" = "es_event_listextattr_t";
    "ES_EVENT_TYPE_AUTH_MMAP" = "es_event_mmap_t";
    "ES_EVENT_TYPE_AUTH_MOUNT" = "es_event_mount_t";
    "ES_EVENT_TYPE_AUTH_MPROTECT" = "es_event_mprotect_t";
    "ES_EVENT_TYPE_AUTH_OPEN" = "es_event_open_t";
    "ES_EVENT_TYPE_AUTH_PROC_CHECK" = "es_event_proc_check_t";
    "ES_EVENT_TYPE_AUTH_PROC_SUSPEND_RESUME" = "es_event_proc_suspend_resume_t";
    "ES_EVENT_TYPE_AUTH_READDIR" = "es_event_readdir_t";
    "ES_EVENT_TYPE_AUTH_READLINK" = "es_event_readlink_t";
    "ES_EVENT_TYPE_AUTH_REMOUNT" = "es_event_remount_t";
    "ES_EVENT_TYPE_AUTH_RENAME" = "es_event_rename_t";
    "ES_EVENT_TYPE_AUTH_SEARCHFS" = "es_event_searchfs_t";
    "ES_EVENT_TYPE_AUTH_SETACL" = "es_event_setacl_t";
    "ES_EVENT_TYPE_AUTH_SETATTRLIST" = "es_event_setattrlist_t";
    "ES_EVENT_TYPE_AUTH_SETEXTATTR" = "es_event_setextattr_t";
    "ES_EVENT_TYPE_AUTH_SETFLAGS" = "es_event_setflags_t";
    "ES_EVENT_TYPE_AUTH_SETMODE" = "es_event_setmode_t";
    "ES_EVENT_TYPE_AUTH_SETOWNER" = "es_event_setowner_t";
    "ES_EVENT_TYPE_AUTH_SETTIME" = "es_event_settime_t";
    "ES_EVENT_TYPE_AUTH_SIGNAL" = "es_event_signal_t";
    "ES_EVENT_TYPE_AUTH_TRUNCATE" = "es_event_truncate_t";
    "ES_EVENT_TYPE_AUTH_UIPC_BIND" = "es_event_uipc_bind_t";
    "ES_EVENT_TYPE_AUTH_UIPC_CONNECT" = "es_event_uipc_connect_t";
    "ES_EVENT_TYPE_AUTH_UNLINK" = "es_event_unlink_t";
    "ES_EVENT_TYPE_AUTH_UTIMES" = "es_event_utimes_t";
    "ES_EVENT_TYPE_NOTIFY_ACCESS" = "es_event_access_t";
    "ES_EVENT_TYPE_NOTIFY_AUTHENTICATION" = "es_event_authentication_t";
    "ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD" = "es_event_btm_launch_item_add_t";
    "ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE" = "es_event_btm_launch_item_remove_t";
    "ES_EVENT_TYPE_NOTIFY_CHDIR" = "es_event_chdir_t";
    "ES_EVENT_TYPE_NOTIFY_CHROOT" = "es_event_chroot_t";
    "ES_EVENT_TYPE_NOTIFY_CLONE" = "es_event_clone_t";
    "ES_EVENT_TYPE_NOTIFY_CLOSE" = "es_event_close_t";
    "ES_EVENT_TYPE_NOTIFY_COPYFILE" = "es_event_copyfile_t";
    "ES_EVENT_TYPE_NOTIFY_CREATE" = "es_event_create_t";
    "ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED" = "es_event_cs_invalidated_t";
    "ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR" = "es_event_deleteextattr_t";
    "ES_EVENT_TYPE_NOTIFY_DUP" = "es_event_dup_t";
    "ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA" = "es_event_exchangedata_t";
    "ES_EVENT_TYPE_NOTIFY_EXEC" = "es_event_exec_t";
    "ES_EVENT_TYPE_NOTIFY_EXIT" = "es_event_exit_t";
    "ES_EVENT_TYPE_NOTIFY_FCNTL" = "es_event_fcntl_t";
    "ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE" = "es_event_file_provider_materialize_t";
    "ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE" = "es_event_file_provider_update_t";
    "ES_EVENT_TYPE_NOTIFY_FORK" = "es_event_fork_t";
    "ES_EVENT_TYPE_NOTIFY_FSGETPATH" = "es_event_fsgetpath_t";
    "ES_EVENT_TYPE_NOTIFY_GETATTRLIST" = "es_event_getattrlist_t";
    "ES_EVENT_TYPE_NOTIFY_GETEXTATTR" = "es_event_getextattr_t";
    "ES_EVENT_TYPE_NOTIFY_GET_TASK" = "es_event_get_task_t";
    "ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT" = "es_event_get_task_inspect_t";
    "ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME" = "es_event_get_task_name_t";
    "ES_EVENT_TYPE_NOTIFY_GET_TASK_READ" = "es_event_get_task_read_t";
    "ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN" = "es_event_iokit_open_t";
    "ES_EVENT_TYPE_NOTIFY_KEXTLOAD" = "es_event_kextload_t";
    "ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD" = "es_event_kextunload_t";
    "ES_EVENT_TYPE_NOTIFY_LINK" = "es_event_link_t";
    "ES_EVENT_TYPE_NOTIFY_LISTEXTATTR" = "es_event_listextattr_t";
    "ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN" = "es_event_login_login_t";
    "ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT" = "es_event_login_logout_t";
    "ES_EVENT_TYPE_NOTIFY_LOOKUP" = "es_event_lookup_t";
    "ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK" = "es_event_lw_session_lock_t";
    "ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN" = "es_event_lw_session_login_t";
    "ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT" = "es_event_lw_session_logout_t";
    "ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK" = "es_event_lw_session_unlock_t";
    "ES_EVENT_TYPE_NOTIFY_MMAP" = "es_event_mmap_t";
    "ES_EVENT_TYPE_NOTIFY_MOUNT" = "es_event_mount_t";
    "ES_EVENT_TYPE_NOTIFY_MPROTECT" = "es_event_mprotect_t";
    "ES_EVENT_TYPE_NOTIFY_OPEN" = "es_event_open_t";
    "ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN" = "es_event_openssh_login_t";
    "ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT" = "es_event_openssh_logout_t";
    "ES_EVENT_TYPE_NOTIFY_PROC_CHECK" = "es_event_proc_check_t";
    "ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME" = "es_event_proc_suspend_resume_t";
    "ES_EVENT_TYPE_NOTIFY_PTY_CLOSE" = "es_event_pty_close_t";
    "ES_EVENT_TYPE_NOTIFY_PTY_GRANT" = "es_event_pty_grant_t";
    "ES_EVENT_TYPE_NOTIFY_READDIR" = "es_event_readdir_t";
    "ES_EVENT_TYPE_NOTIFY_READLINK" = "es_event_readlink_t";
    "ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE" = "es_event_remote_thread_create_t";
    "ES_EVENT_TYPE_NOTIFY_REMOUNT" = "es_event_remount_t";
    "ES_EVENT_TYPE_NOTIFY_RENAME" = "es_event_rename_t";
    "ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH" = "es_event_screensharing_attach_t";
    "ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH" = "es_event_screensharing_detach_t";
    "ES_EVENT_TYPE_NOTIFY_SEARCHFS" = "es_event_searchfs_t";
    "ES_EVENT_TYPE_NOTIFY_SETACL" = "es_event_setacl_t";
    "ES_EVENT_TYPE_NOTIFY_SETATTRLIST" = "es_event_setattrlist_t";
    "ES_EVENT_TYPE_NOTIFY_SETEGID" = "es_event_setegid_t";
    "ES_EVENT_TYPE_NOTIFY_SETEUID" = "es_event_seteuid_t";
    "ES_EVENT_TYPE_NOTIFY_SETEXTATTR" = "es_event_setextattr_t";
    "ES_EVENT_TYPE_NOTIFY_SETFLAGS" = "es_event_setflags_t";
    "ES_EVENT_TYPE_NOTIFY_SETGID" = "es_event_setgid_t";
    "ES_EVENT_TYPE_NOTIFY_SETMODE" = "es_event_setmode_t";
    "ES_EVENT_TYPE_NOTIFY_SETOWNER" = "es_event_setowner_t";
    "ES_EVENT_TYPE_NOTIFY_SETREGID" = "es_event_setregid_t";
    "ES_EVENT_TYPE_NOTIFY_SETREUID" = "es_event_setreuid_t";
    "ES_EVENT_TYPE_NOTIFY_SETTIME" = "es_event_settime_t";
    "ES_EVENT_TYPE_NOTIFY_SETUID" = "es_event_setuid_t";
    "ES_EVENT_TYPE_NOTIFY_SIGNAL" = "es_event_signal_t";
    "ES_EVENT_TYPE_NOTIFY_STAT" = "es_event_stat_t";
    "ES_EVENT_TYPE_NOTIFY_TRACE" = "es_event_trace_t";
    "ES_EVENT_TYPE_NOTIFY_TRUNCATE" = "es_event_truncate_t";
    "ES_EVENT_TYPE_NOTIFY_UIPC_BIND" = "es_event_uipc_bind_t";
    "ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT" = "es_event_uipc_connect_t";
    "ES_EVENT_TYPE_NOTIFY_UNLINK" = "es_event_unlink_t";
    "ES_EVENT_TYPE_NOTIFY_UNMOUNT" = "es_event_unmount_t";
    "ES_EVENT_TYPE_NOTIFY_UTIMES" = "es_event_utimes_t";
    "ES_EVENT_TYPE_NOTIFY_WRITE" = "es_event_write_t";
    "ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED" = "es_event_xp_malware_detected_t";
    "ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED" = "es_event_xp_malware_remediated_t";
}, "propertyName": {
    "es_event_access_t" = access;
    "es_event_authentication_t" = authentication;
    "es_event_btm_launch_item_add_t" = "btm_launch_item_add";
    "es_event_btm_launch_item_remove_t" = "btm_launch_item_remove";
    "es_event_chdir_t" = chdir;
    "es_event_chroot_t" = chroot;
    "es_event_clone_t" = clone;
    "es_event_close_t" = close;
    "es_event_copyfile_t" = copyfile;
    "es_event_create_t" = create;
    "es_event_cs_invalidated_t" = "cs_invalidated";
    "es_event_deleteextattr_t" = deleteextattr;
    "es_event_dup_t" = dup;
    "es_event_exchangedata_t" = exchangedata;
    "es_event_exec_t" = exec;
    "es_event_exit_t" = exit;
    "es_event_fcntl_t" = fcntl;
    "es_event_file_provider_materialize_t" = "file_provider_materialize";
    "es_event_file_provider_update_t" = "file_provider_update";
    "es_event_fork_t" = fork;
    "es_event_fsgetpath_t" = fsgetpath;
    "es_event_get_task_inspect_t" = "get_task_inspect";
    "es_event_get_task_name_t" = "get_task_name";
    "es_event_get_task_read_t" = "get_task_read";
    "es_event_get_task_t" = "get_task";
    "es_event_getattrlist_t" = getattrlist;
    "es_event_getextattr_t" = getextattr;
    "es_event_iokit_open_t" = "iokit_open";
    "es_event_kextload_t" = kextload;
    "es_event_kextunload_t" = kextunload;
    "es_event_link_t" = link;
    "es_event_listextattr_t" = listextattr;
    "es_event_login_login_t" = "login_login";
    "es_event_login_logout_t" = "login_logout";
    "es_event_lookup_t" = lookup;
    "es_event_lw_session_lock_t" = "lw_session_lock";
    "es_event_lw_session_login_t" = "lw_session_login";
    "es_event_lw_session_logout_t" = "lw_session_logout";
    "es_event_lw_session_unlock_t" = "lw_session_unlock";
    "es_event_mmap_t" = mmap;
    "es_event_mount_t" = mount;
    "es_event_mprotect_t" = mprotect;
    "es_event_open_t" = open;
    "es_event_openssh_login_t" = "openssh_login";
    "es_event_openssh_logout_t" = "openssh_logout";
    "es_event_proc_check_t" = "proc_check";
    "es_event_proc_suspend_resume_t" = "proc_suspend_resume";
    "es_event_pty_close_t" = "pty_close";
    "es_event_pty_grant_t" = "pty_grant";
    "es_event_readdir_t" = readdir;
    "es_event_readlink_t" = readlink;
    "es_event_remote_thread_create_t" = "remote_thread_create";
    "es_event_remount_t" = remount;
    "es_event_rename_t" = rename;
    "es_event_screensharing_attach_t" = "screensharing_attach";
    "es_event_screensharing_detach_t" = "screensharing_detach";
    "es_event_searchfs_t" = searchfs;
    "es_event_setacl_t" = setacl;
    "es_event_setattrlist_t" = setattrlist;
    "es_event_setegid_t" = setegid;
    "es_event_seteuid_t" = seteuid;
    "es_event_setextattr_t" = setextattr;
    "es_event_setflags_t" = setflags;
    "es_event_setgid_t" = setgid;
    "es_event_setmode_t" = setmode;
    "es_event_setowner_t" = setowner;
    "es_event_setregid_t" = setregid;
    "es_event_setreuid_t" = setreuid;
    "es_event_settime_t" = settime;
    "es_event_setuid_t" = setuid;
    "es_event_signal_t" = signal;
    "es_event_stat_t" = stat;
    "es_event_trace_t" = trace;
    "es_event_truncate_t" = truncate;
    "es_event_uipc_bind_t" = "uipc_bind";
    "es_event_uipc_connect_t" = "uipc_connect";
    "es_event_unlink_t" = unlink;
    "es_event_unmount_t" = unmount;
    "es_event_utimes_t" = utimes;
    "es_event_write_t" = write;
    "es_event_xp_malware_detected_t" = "xp_malware_detected";
    "es_event_xp_malware_remediated_t" = "xp_malware_remediated";
}, "redirect": {
    "es_event_authentication_t" = authentication;
    "es_event_btm_launch_item_add_t" = "btm_launch_item_add";
    "es_event_btm_launch_item_remove_t" = "btm_launch_item_remove";
    "es_event_login_login_t" = "login_login";
    "es_event_login_logout_t" = "login_logout";
    "es_event_lw_session_lock_t" = "lw_session_lock";
    "es_event_lw_session_login_t" = "lw_session_login";
    "es_event_lw_session_logout_t" = "lw_session_logout";
    "es_event_lw_session_unlock_t" = "lw_session_unlock";
    "es_event_openssh_login_t" = "openssh_login";
    "es_event_openssh_logout_t" = "openssh_logout";
    "es_event_screensharing_attach_t" = "screensharing_attach";
    "es_event_screensharing_detach_t" = "screensharing_detach";
    "es_event_xp_malware_detected_t" = "xp_malware_detected";
    "es_event_xp_malware_remediated_t" = "xp_malware_remediated";
}]
*/

import Foundation
import EndpointSecurity

struct cai_message_t { //对标es_message_t
    public var version: UInt32
    public var time: timespec
    public var mach_time: UInt64
    public var deadline: UInt64
    public var process: UnsafeMutablePointer<es_process_t>
    public var seq_num: UInt64
    public var action_type: es_action_type_t
    public var action: es_message_t.__Unnamed_union_action
    public var event_type: es_event_type_t
    public var thread: UnsafeMutablePointer<es_thread_t>? /* field available only if message version >= 4 */
    public var global_seq_num: UInt64 /* field available only if message version >= 4 */
    public var event: UnsafeRawPointer //指向具体的es_event_t类型
    init(es_msg msg: UnsafePointer<es_message_t>) {
        version = msg.pointee.version
        time = msg.pointee.time
        mach_time = msg.pointee.mach_time
        deadline = msg.pointee.deadline
        process = msg.pointee.process
        seq_num = msg.pointee.seq_num
        action_type = msg.pointee.action_type
        action = msg.pointee.action
        event_type = msg.pointee.event_type
        global_seq_num = msg.pointee.global_seq_num

        switch msg.pointee.event_type {
        case ES_EVENT_TYPE_AUTH_CHDIR :
            event = withUnsafePointer(to: msg.pointee.event.chdir) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_CHROOT :
            event = withUnsafePointer(to: msg.pointee.event.chroot) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_CLONE :
            event = withUnsafePointer(to: msg.pointee.event.clone) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_COPYFILE :
            event = withUnsafePointer(to: msg.pointee.event.copyfile) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_CREATE :
            event = withUnsafePointer(to: msg.pointee.event.create) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_DELETEEXTATTR :
            event = withUnsafePointer(to: msg.pointee.event.deleteextattr) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_EXCHANGEDATA :
            event = withUnsafePointer(to: msg.pointee.event.exchangedata) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_EXEC :
            event = withUnsafePointer(to: msg.pointee.event.exec) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_FCNTL :
            event = withUnsafePointer(to: msg.pointee.event.fcntl) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_MATERIALIZE :
            event = withUnsafePointer(to: msg.pointee.event.file_provider_materialize) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_UPDATE :
            event = withUnsafePointer(to: msg.pointee.event.file_provider_update) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_FSGETPATH :
            event = withUnsafePointer(to: msg.pointee.event.fsgetpath) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_GETATTRLIST :
            event = withUnsafePointer(to: msg.pointee.event.getattrlist) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_GETEXTATTR :
            event = withUnsafePointer(to: msg.pointee.event.getextattr) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_GET_TASK :
            event = withUnsafePointer(to: msg.pointee.event.get_task) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_GET_TASK_READ :
            event = withUnsafePointer(to: msg.pointee.event.get_task_read) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_IOKIT_OPEN :
            event = withUnsafePointer(to: msg.pointee.event.iokit_open) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_KEXTLOAD :
            event = withUnsafePointer(to: msg.pointee.event.kextload) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_LINK :
            event = withUnsafePointer(to: msg.pointee.event.link) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_LISTEXTATTR :
            event = withUnsafePointer(to: msg.pointee.event.listextattr) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_MMAP :
            event = withUnsafePointer(to: msg.pointee.event.mmap) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_MOUNT :
            event = withUnsafePointer(to: msg.pointee.event.mount) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_MPROTECT :
            event = withUnsafePointer(to: msg.pointee.event.mprotect) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_OPEN :
            event = withUnsafePointer(to: msg.pointee.event.open) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_PROC_CHECK :
            event = withUnsafePointer(to: msg.pointee.event.proc_check) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_PROC_SUSPEND_RESUME :
            event = withUnsafePointer(to: msg.pointee.event.proc_suspend_resume) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_READDIR :
            event = withUnsafePointer(to: msg.pointee.event.readdir) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_READLINK :
            event = withUnsafePointer(to: msg.pointee.event.readlink) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_REMOUNT :
            event = withUnsafePointer(to: msg.pointee.event.remount) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_RENAME :
            event = withUnsafePointer(to: msg.pointee.event.rename) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_SEARCHFS :
            event = withUnsafePointer(to: msg.pointee.event.searchfs) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_SETACL :
            event = withUnsafePointer(to: msg.pointee.event.setacl) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_SETATTRLIST :
            event = withUnsafePointer(to: msg.pointee.event.setattrlist) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_SETEXTATTR :
            event = withUnsafePointer(to: msg.pointee.event.setextattr) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_SETFLAGS :
            event = withUnsafePointer(to: msg.pointee.event.setflags) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_SETMODE :
            event = withUnsafePointer(to: msg.pointee.event.setmode) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_SETOWNER :
            event = withUnsafePointer(to: msg.pointee.event.setowner) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_SETTIME :
            event = withUnsafePointer(to: msg.pointee.event.settime) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_SIGNAL :
            event = withUnsafePointer(to: msg.pointee.event.signal) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_TRUNCATE :
            event = withUnsafePointer(to: msg.pointee.event.truncate) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_UIPC_BIND :
            event = withUnsafePointer(to: msg.pointee.event.uipc_bind) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_UIPC_CONNECT :
            event = withUnsafePointer(to: msg.pointee.event.uipc_connect) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_UNLINK :
            event = withUnsafePointer(to: msg.pointee.event.unlink) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_AUTH_UTIMES :
            event = withUnsafePointer(to: msg.pointee.event.utimes) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_ACCESS :
            event = withUnsafePointer(to: msg.pointee.event.access) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_AUTHENTICATION :
            event = UnsafeRawPointer(msg.pointee.event.authentication)
        case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD :
            event = UnsafeRawPointer(msg.pointee.event.btm_launch_item_add)
        case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE :
            event = UnsafeRawPointer(msg.pointee.event.btm_launch_item_remove)
        case ES_EVENT_TYPE_NOTIFY_CHDIR :
            event = withUnsafePointer(to: msg.pointee.event.chdir) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_CHROOT :
            event = withUnsafePointer(to: msg.pointee.event.chroot) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_CLONE :
            event = withUnsafePointer(to: msg.pointee.event.clone) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_CLOSE :
            event = withUnsafePointer(to: msg.pointee.event.close) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_COPYFILE :
            event = withUnsafePointer(to: msg.pointee.event.copyfile) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_CREATE :
            event = withUnsafePointer(to: msg.pointee.event.create) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED :
            event = withUnsafePointer(to: msg.pointee.event.cs_invalidated) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR :
            event = withUnsafePointer(to: msg.pointee.event.deleteextattr) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_DUP :
            event = withUnsafePointer(to: msg.pointee.event.dup) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA :
            event = withUnsafePointer(to: msg.pointee.event.exchangedata) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_EXEC :
            event = withUnsafePointer(to: msg.pointee.event.exec) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_EXIT :
            event = withUnsafePointer(to: msg.pointee.event.exit) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_FCNTL :
            event = withUnsafePointer(to: msg.pointee.event.fcntl) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE :
            event = withUnsafePointer(to: msg.pointee.event.file_provider_materialize) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE :
            event = withUnsafePointer(to: msg.pointee.event.file_provider_update) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_FORK :
            event = withUnsafePointer(to: msg.pointee.event.fork) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_FSGETPATH :
            event = withUnsafePointer(to: msg.pointee.event.fsgetpath) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_GETATTRLIST :
            event = withUnsafePointer(to: msg.pointee.event.getattrlist) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_GETEXTATTR :
            event = withUnsafePointer(to: msg.pointee.event.getextattr) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_GET_TASK :
            event = withUnsafePointer(to: msg.pointee.event.get_task) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT :
            event = withUnsafePointer(to: msg.pointee.event.get_task_inspect) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME :
            event = withUnsafePointer(to: msg.pointee.event.get_task_name) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_GET_TASK_READ :
            event = withUnsafePointer(to: msg.pointee.event.get_task_read) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN :
            event = withUnsafePointer(to: msg.pointee.event.iokit_open) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_KEXTLOAD :
            event = withUnsafePointer(to: msg.pointee.event.kextload) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD :
            event = withUnsafePointer(to: msg.pointee.event.kextunload) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_LINK :
            event = withUnsafePointer(to: msg.pointee.event.link) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_LISTEXTATTR :
            event = withUnsafePointer(to: msg.pointee.event.listextattr) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN :
            event = UnsafeRawPointer(msg.pointee.event.login_login)
        case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT :
            event = UnsafeRawPointer(msg.pointee.event.login_logout)
        case ES_EVENT_TYPE_NOTIFY_LOOKUP :
            event = withUnsafePointer(to: msg.pointee.event.lookup) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK :
            event = UnsafeRawPointer(msg.pointee.event.lw_session_lock)
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN :
            event = UnsafeRawPointer(msg.pointee.event.lw_session_login)
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT :
            event = UnsafeRawPointer(msg.pointee.event.lw_session_logout)
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK :
            event = UnsafeRawPointer(msg.pointee.event.lw_session_unlock)
        case ES_EVENT_TYPE_NOTIFY_MMAP :
            event = withUnsafePointer(to: msg.pointee.event.mmap) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_MOUNT :
            event = withUnsafePointer(to: msg.pointee.event.mount) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_MPROTECT :
            event = withUnsafePointer(to: msg.pointee.event.mprotect) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_OPEN :
            event = withUnsafePointer(to: msg.pointee.event.open) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN :
            event = UnsafeRawPointer(msg.pointee.event.openssh_login)
        case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT :
            event = UnsafeRawPointer(msg.pointee.event.openssh_logout)
        case ES_EVENT_TYPE_NOTIFY_PROC_CHECK :
            event = withUnsafePointer(to: msg.pointee.event.proc_check) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME :
            event = withUnsafePointer(to: msg.pointee.event.proc_suspend_resume) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_PTY_CLOSE :
            event = withUnsafePointer(to: msg.pointee.event.pty_close) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_PTY_GRANT :
            event = withUnsafePointer(to: msg.pointee.event.pty_grant) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_READDIR :
            event = withUnsafePointer(to: msg.pointee.event.readdir) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_READLINK :
            event = withUnsafePointer(to: msg.pointee.event.readlink) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE :
            event = withUnsafePointer(to: msg.pointee.event.remote_thread_create) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_REMOUNT :
            event = withUnsafePointer(to: msg.pointee.event.remount) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_RENAME :
            event = withUnsafePointer(to: msg.pointee.event.rename) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH :
            event = UnsafeRawPointer(msg.pointee.event.screensharing_attach)
        case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH :
            event = UnsafeRawPointer(msg.pointee.event.screensharing_detach)
        case ES_EVENT_TYPE_NOTIFY_SEARCHFS :
            event = withUnsafePointer(to: msg.pointee.event.searchfs) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SETACL :
            event = withUnsafePointer(to: msg.pointee.event.setacl) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SETATTRLIST :
            event = withUnsafePointer(to: msg.pointee.event.setattrlist) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SETEGID :
            event = withUnsafePointer(to: msg.pointee.event.setegid) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SETEUID :
            event = withUnsafePointer(to: msg.pointee.event.seteuid) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SETEXTATTR :
            event = withUnsafePointer(to: msg.pointee.event.setextattr) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SETFLAGS :
            event = withUnsafePointer(to: msg.pointee.event.setflags) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SETGID :
            event = withUnsafePointer(to: msg.pointee.event.setgid) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SETMODE :
            event = withUnsafePointer(to: msg.pointee.event.setmode) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SETOWNER :
            event = withUnsafePointer(to: msg.pointee.event.setowner) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SETREGID :
            event = withUnsafePointer(to: msg.pointee.event.setregid) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SETREUID :
            event = withUnsafePointer(to: msg.pointee.event.setreuid) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SETTIME :
            event = withUnsafePointer(to: msg.pointee.event.settime) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SETUID :
            event = withUnsafePointer(to: msg.pointee.event.setuid) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_SIGNAL :
            event = withUnsafePointer(to: msg.pointee.event.signal) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_STAT :
            event = withUnsafePointer(to: msg.pointee.event.stat) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_TRACE :
            event = withUnsafePointer(to: msg.pointee.event.trace) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_TRUNCATE :
            event = withUnsafePointer(to: msg.pointee.event.truncate) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_UIPC_BIND :
            event = withUnsafePointer(to: msg.pointee.event.uipc_bind) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT :
            event = withUnsafePointer(to: msg.pointee.event.uipc_connect) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_UNLINK :
            event = withUnsafePointer(to: msg.pointee.event.unlink) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_UNMOUNT :
            event = withUnsafePointer(to: msg.pointee.event.unmount) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_UTIMES :
            event = withUnsafePointer(to: msg.pointee.event.utimes) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_WRITE :
            event = withUnsafePointer(to: msg.pointee.event.write) { p -> UnsafeRawPointer in
                UnsafeRawPointer(p)
            }
        case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED :
            event = UnsafeRawPointer(msg.pointee.event.xp_malware_detected)
        case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED :
            event = UnsafeRawPointer(msg.pointee.event.xp_malware_remediated)
        }
    }
}
