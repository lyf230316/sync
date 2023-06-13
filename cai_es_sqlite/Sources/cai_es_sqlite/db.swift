//
//  File.swift
//  
//
//  Created by msi on 2023/6/11.
//

import Foundation
import SQLite
import EndpointSecurity

class Db {
    let file: String
    let connect: Connection
    
    init?(file: String) {
        self.file = file
        let dir = (CommandLine.arguments.first! as NSString).deletingLastPathComponent
        let dbPath = dir.appendingFormat("/%@.sqlite", Date().description)
        guard let cnt = try? Connection(dbPath) else {
            return nil
        }
        connect = cnt
    }
    
    func createTables() {
        
    }
}

extension Db {
    static let id = Expression<UInt64>("id")
}

// es_message_t
class Message {
    static let tableName = Table("Message")
    
    static let version = Expression<UInt32>("version")
    static let time = Expression<Double>("time")
    static let mach_time = Expression<UInt64>("mach_time")
    static let deadline = Expression<UInt64>("deadline")
    static let process = Expression<UInt64>("process")
    static let seq_num = Expression<UInt64>("seq_num")
    static let action_type = Expression<UInt32>("action_type") // es_action_type_t.rawValue
    static let action = Expression<Data>("action")//es_message_t.__Unnamed_union_action
    static let event_type = Expression<UInt32>("event_type")// es_event_type_t.rawValue
    static let event = Expression<UInt64>("event")
    static let thread_id = Expression<UInt64>("thread_id")
    static let global_seq_num = Expression<UInt64>("global_seq_num")
}

// es_process_t
class Process {
    static let tableName = Table("Process")
    
    static let audit_token = Expression<UUID>("audit_token")
    static let ppid = Expression<Int32>("ppid")
    static let original_ppid = Expression<Int32>("original_ppid")
    static let group_id = Expression<Int32>("group_id")
    static let session_id = Expression<Int32>("session_id")
    static let codesigning_flags = Expression<UInt32>("codesigning_flags")
    static let is_platform_binary = Expression<Bool>("is_platform_binary")
    static let is_es_client = Expression<Bool>("is_es_client")
    static let cdhash = Expression<Data>("cdhash")
    static let signing_id = Expression<String>("signing_id")
    static let team_id = Expression<String>("team_id")
    static let executable = Expression<UInt64>("executable") // File
    static let tty = Expression<UInt64>("tty") // File
    static let start_time = Expression<Data>("start_time")//timeval
    static let responsible_audit_token = Expression<Data>("responsible_audit_token") //audit_token_t
    static let parent_audit_token = Expression<Data>("parent_audit_token") //audit_token_t
}

// es_file_t
class File {
    static let tableName = Table("File")
    
    static let path = Expression<String>("path")
    static let path_truncated = Expression<Bool>("path_truncated")
    static let stat = Expression<Data>("stat")
}

// MARK: events

// es_event_access_t
class EventAccess {
    static let tableName = Table("EventAccess")
    
    static let mod = Expression<Int32>("mod")
    static let target = Expression<UInt64>("target") // File
}

// es_event_chdir_t
class EventChdir {
    static let tableName = Table("EventChdir")
    
    static let target = Expression<UInt64>("target") // File
}


// es_event_chroot_t
class EventChroot {
    static let tableName = Table("EventChroot")
    
    static let target = Expression<UInt64>("target") // File
}

// es_event_clone_t
class EventClone {
    static let tableName = Table("EventClone")
    
    static let source = Expression<UInt64>("source") // File
    static let target_dir = Expression<UInt64>("target_dir") // File
    static let target_name = Expression<String>("target_name")
}

// es_event_close_t
class EventClose {
    static let tableName = Table("EventClose")
    
    static let modified = Expression<Bool>("modified")
    static let target = Expression<UInt64>("target") // File
    static let was_mapped_writable = Expression<Bool>("was_mapped_writable")
}

// es_event_copyfile_t
class EventCopyfile {
    static let tableName = Table("EventCopyfile")
    
    static let source = Expression<UInt64>("source") // File
    static let target = Expression<UInt64>("target") // File
    static let target_dir = Expression<UInt64>("target_dir") // File
    static let target_name = Expression<String>("target_name")
    static let mode = Expression<UInt16>("mode") // mode_t
    static let flags = Expression<Int32>("flags")
}

// es_event_create_t
//
// es_event_cs_invalidated_t
//
// es_event_deleteextattr_t
//
// es_event_dup_t
//
// es_event_exchangedata_t
//
// es_event_exec_t
//
// es_event_exit_t
//
// es_event_file_provider_materialize_t
//
// es_event_file_provider_update_t
//
// es_event_fcntl_t
//
// es_event_fork_t
//
// es_event_fsgetpath_t
//
// es_event_get_task_t
//
// es_event_get_task_read_t
//
// es_event_get_task_inspect_t
//
// es_event_get_task_name_t
//
// es_event_getattrlist_t
//
// es_event_getextattr_t
//
// es_event_iokit_open_t
//
// es_event_kextload_t
//
// es_event_kextunload_t
//
// es_event_link_t
//
// es_event_listextattr_t
//
// es_event_lookup_t
//
// es_event_mmap_t
//
// es_event_mount_t
//
// es_event_mprotect_t
//
// es_event_open_t
//
// es_event_proc_check_t
//
// es_event_proc_suspend_resume_t
//
// es_event_pty_close_t
//
// es_event_pty_grant_t
//
// es_event_readdir_t
//
// es_event_readlink_t
//
// es_event_remote_thread_create_t
//
// es_event_remount_t
//
// es_event_rename_t
//
// es_event_searchfs_t
//
// es_event_setacl_t
//
// es_event_setattrlist_t
//
// es_event_setextattr_t
//
// es_event_setflags_t
//
// es_event_setmode_t
//
// es_event_setowner_t
//
// es_event_settime_t
//
// es_event_setuid_t
//
// es_event_setgid_t
//
// es_event_seteuid_t
//
// es_event_setegid_t
//
// es_event_setreuid_t
//
// es_event_setregid_t
//
// es_event_signal_t
//
// es_event_stat_t
//
// es_event_trace_t
//
// es_event_truncate_t
//
// es_event_uipc_bind_t
//
// es_event_uipc_connect_t
//
// es_event_unlink_t
//
// es_event_unmount_t
//
// es_event_utimes_t
//
// es_event_write_t
//
//
///**
//     * Events added in macOS 13.0 or later use nonnull pointers.
//     */
// UnsafeMutablePointer<es_event_authentication_t>
//
// UnsafeMutablePointer<es_event_xp_malware_detected_t>
//
// UnsafeMutablePointer<es_event_xp_malware_remediated_t>
//
// UnsafeMutablePointer<es_event_lw_session_login_t>
//
// UnsafeMutablePointer<es_event_lw_session_logout_t>
//
// UnsafeMutablePointer<es_event_lw_session_lock_t>
//
// UnsafeMutablePointer<es_event_lw_session_unlock_t>
//
// UnsafeMutablePointer<es_event_screensharing_attach_t>
//
// UnsafeMutablePointer<es_event_screensharing_detach_t>
//
// UnsafeMutablePointer<es_event_openssh_login_t>
//
// UnsafeMutablePointer<es_event_openssh_logout_t>
//
// UnsafeMutablePointer<es_event_login_login_t>
//
// UnsafeMutablePointer<es_event_login_logout_t>
//
// UnsafeMutablePointer<es_event_btm_launch_item_add_t>
//
// UnsafeMutablePointer<es_event_btm_launch_item_remove_t>

