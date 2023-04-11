// Generated using Sourcery 2.0.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

/* argument
["types": [{
    name = "es_message_t";
    points =     (
                {
            name = process;
            type = "es_process_t";
        },
                {
            name = thread;
            optional = 1;
            type = "es_thread_t";
        }
    );
}, {
    name = "es_process_t";
    points =     (
                {
            name = executable;
            type = "es_file_t";
        },
                {
            name = tty;
            optional = 1;
            type = "es_file_t";
        }
    );
}, {
    name = "es_file_t";
    points =     (
                {
            name = path;
            type = "es_string_token_t";
        }
    );
}, {
    name = "es_string_token_t";
    points =     (
                {
            name = data;
            size = length;
            type = CChar;
        }
    );
}, {
    name = "es_thread_t";
}, {
    name = "es_event_access_t";
}, {
    name = "es_event_chdir_t";
}, {
    name = "es_event_chroot_t";
}, {
    name = "es_event_clone_t";
}, {
    name = "es_event_close_t";
}, {
    name = "es_event_copyfile_t";
}, {
    name = "es_event_create_t";
}, {
    name = "es_event_cs_invalidated_t";
}, {
    name = "es_event_deleteextattr_t";
}, {
    name = "es_event_dup_t";
}, {
    name = "es_event_exchangedata_t";
}, {
    name = "es_event_exec_t";
}, {
    name = "es_event_exit_t";
}, {
    name = "es_event_file_provider_materialize_t";
}, {
    name = "es_event_file_provider_update_t";
}, {
    name = "es_event_fcntl_t";
}, {
    name = "es_event_fork_t";
}, {
    name = "es_event_fsgetpath_t";
}, {
    name = "es_event_get_task_t";
}, {
    name = "es_event_get_task_read_t";
}, {
    name = "es_event_get_task_inspect_t";
}, {
    name = "es_event_get_task_name_t";
}, {
    name = "es_event_getattrlist_t";
}, {
    name = "es_event_getextattr_t";
}, {
    name = "es_event_iokit_open_t";
}, {
    name = "es_event_kextload_t";
}, {
    name = "es_event_kextunload_t";
}, {
    name = "es_event_link_t";
}, {
    name = "es_event_listextattr_t";
}, {
    name = "es_event_lookup_t";
}, {
    name = "es_event_mmap_t";
}, {
    name = "es_event_mount_t";
}, {
    name = "es_event_mprotect_t";
}, {
    name = "es_event_open_t";
}, {
    name = "es_event_proc_check_t";
}, {
    name = "es_event_proc_suspend_resume_t";
}, {
    name = "es_event_pty_close_t";
}, {
    name = "es_event_pty_grant_t";
}, {
    name = "es_event_readdir_t";
}, {
    name = "es_event_readlink_t";
}, {
    name = "es_event_remote_thread_create_t";
}, {
    name = "es_event_remount_t";
}, {
    name = "es_event_rename_t";
}, {
    name = "es_event_searchfs_t";
}, {
    name = "es_event_setacl_t";
}, {
    name = "es_event_setattrlist_t";
}, {
    name = "es_event_setextattr_t";
}, {
    name = "es_event_setflags_t";
}, {
    name = "es_event_setmode_t";
}, {
    name = "es_event_setowner_t";
}, {
    name = "es_event_settime_t";
}, {
    name = "es_event_setuid_t";
}, {
    name = "es_event_setgid_t";
}, {
    name = "es_event_seteuid_t";
}, {
    name = "es_event_setegid_t";
}, {
    name = "es_event_setreuid_t";
}, {
    name = "es_event_setregid_t";
}, {
    name = "es_event_signal_t";
}, {
    name = "es_event_stat_t";
}, {
    name = "es_event_trace_t";
}, {
    name = "es_event_truncate_t";
}, {
    name = "es_event_uipc_bind_t";
}, {
    name = "es_event_uipc_connect_t";
}, {
    name = "es_event_unlink_t";
}, {
    name = "es_event_unmount_t";
}, {
    name = "es_event_utimes_t";
}, {
    name = "es_event_write_t";
}, {
    name = "es_event_authentication_t";
}, {
    name = "es_event_xp_malware_detected_t";
}, {
    name = "es_event_xp_malware_remediated_t";
}, {
    name = "es_event_lw_session_login_t";
}, {
    name = "es_event_lw_session_logout_t";
}, {
    name = "es_event_lw_session_lock_t";
}, {
    name = "es_event_lw_session_unlock_t";
}, {
    name = "es_event_screensharing_attach_t";
}, {
    name = "es_event_screensharing_detach_t";
}, {
    name = "es_event_openssh_login_t";
}, {
    name = "es_event_openssh_logout_t";
}, {
    name = "es_event_login_login_t";
}, {
    name = "es_event_login_logout_t";
}, {
    name = "es_event_btm_launch_item_add_t";
}, {
    name = "es_event_btm_launch_item_remove_t";
}]]
*/

import Foundation
import EndpointSecurity

protocol ES_Memory {
    associatedtype T:ES_Memory
    func em_size() -> Int
    func em_write(_ p: UnsafeMutableRawPointer)
    static func em_read(_ p: UnsafeMutableRawPointer) -> UnsafeMutablePointer<T>
}

extension ES_Memory {
    func em_size() -> Int {
        return MemoryLayout.size(ofValue: self)
    }
    func em_write(_ p: UnsafeMutableRawPointer) {
        let size = MemoryLayout.size(ofValue: self)
        p.bindMemory(to: T.self, capacity: 1).pointee = self as! Self.T
    }
    static func em_read(_ p: UnsafeMutableRawPointer) -> UnsafeMutablePointer<T> {
        p.bindMemory(to: T.self, capacity: 1)
    }
}

extension es_message_t : ES_Memory {
    typealias T = es_message_t

    func em_size() -> Int {
        var size = MemoryLayout<T>.size
                    size += self.process.pointee.em_size()
                    if let thread = self.thread {
                        size += 1
                        size += thread.pointee.em_size()
                    } else {
                        size += 1
                    }
        return size
    }


    func em_write(_ p: UnsafeMutableRawPointer) {
        var size = MemoryLayout<T>.size
        p.bindMemory(to: T.self, capacity: 1).pointee = self
                self.process.pointee.em_write(p.advanced(by: size))
                size += self.process.pointee.em_size()
                if let thread = self.thread {
                    p.bindMemory(to: Bool.self, capacity: 1).pointee = true
                    size += 1
                    thread.pointee.em_write(p.advanced(by: size))
                    size += thread.pointee.em_size()
                } else {
                    p.bindMemory(to: Bool.self, capacity: 1).pointee = false
                    size += 1
                }
    }


    static func em_read(_ p: UnsafeMutableRawPointer) -> UnsafeMutablePointer<T> {
        let tp = p.bindMemory(to: T.self, capacity: 1)
        var size = MemoryLayout<T>.size
                tp.pointee.process = es_process_t.em_read(p.advanced(by: size))
                size += tp.pointee.process.pointee.em_size()
                if p.advanced(by: size).bindMemory(to: Bool.self, capacity: 1).pointee {
                    size += 1
                    tp.pointee.thread = es_thread_t.em_read(p.advanced(by: size))
                    size += tp.pointee.thread!.pointee.em_size()
                } else {
                    size += 1
                    tp.pointee.thread = nil
                }
        return tp
    }
}

extension es_process_t : ES_Memory {
    typealias T = es_process_t

    func em_size() -> Int {
        var size = MemoryLayout<T>.size
                    size += self.executable.pointee.em_size()
                    if let tty = self.tty {
                        size += 1
                        size += tty.pointee.em_size()
                    } else {
                        size += 1
                    }
        return size
    }


    func em_write(_ p: UnsafeMutableRawPointer) {
        var size = MemoryLayout<T>.size
        p.bindMemory(to: T.self, capacity: 1).pointee = self
                self.executable.pointee.em_write(p.advanced(by: size))
                size += self.executable.pointee.em_size()
                if let tty = self.tty {
                    p.bindMemory(to: Bool.self, capacity: 1).pointee = true
                    size += 1
                    tty.pointee.em_write(p.advanced(by: size))
                    size += tty.pointee.em_size()
                } else {
                    p.bindMemory(to: Bool.self, capacity: 1).pointee = false
                    size += 1
                }
    }


    static func em_read(_ p: UnsafeMutableRawPointer) -> UnsafeMutablePointer<T> {
        let tp = p.bindMemory(to: T.self, capacity: 1)
        var size = MemoryLayout<T>.size
                tp.pointee.executable = es_file_t.em_read(p.advanced(by: size))
                size += tp.pointee.executable.pointee.em_size()
                if p.advanced(by: size).bindMemory(to: Bool.self, capacity: 1).pointee {
                    size += 1
                    tp.pointee.tty = es_file_t.em_read(p.advanced(by: size))
                    size += tp.pointee.tty!.pointee.em_size()
                } else {
                    size += 1
                    tp.pointee.tty = nil
                }
        return tp
    }
}

extension es_file_t : ES_Memory {
    typealias T = es_file_t

    func em_size() -> Int {
        var size = MemoryLayout<T>.size
                    size += self.path.pointee.em_size()
        return size
    }


    func em_write(_ p: UnsafeMutableRawPointer) {
        var size = MemoryLayout<T>.size
        p.bindMemory(to: T.self, capacity: 1).pointee = self
                self.path.pointee.em_write(p.advanced(by: size))
                size += self.path.pointee.em_size()
    }


    static func em_read(_ p: UnsafeMutableRawPointer) -> UnsafeMutablePointer<T> {
        let tp = p.bindMemory(to: T.self, capacity: 1)
        var size = MemoryLayout<T>.size
                tp.pointee.path = es_string_token_t.em_read(p.advanced(by: size))
                size += tp.pointee.path.pointee.em_size()
        return tp
    }
}

extension es_string_token_t : ES_Memory {
    typealias T = es_string_token_t

    func em_size() -> Int {
        var size = MemoryLayout<T>.size
                    p.advanced(by: size).(to: CChar.self, capacity: self.length).pointee = self.data.bindMemory(to:CChar.self, capacity: length).pointee
                    size += MemoryLayout<CChar>.size*self.length
        return size
    }


    func em_write(_ p: UnsafeMutableRawPointer) {
        var size = MemoryLayout<T>.size
        p.bindMemory(to: T.self, capacity: 1).pointee = self
                p.advanced(by: size).(to: CChar.self, capacity: self.length).pointee = self.data.bindMemory(to:CChar.self, capacity: length).pointee
                size += MemoryLayout<CChar>.size*self.length
    }


    static func em_read(_ p: UnsafeMutableRawPointer) -> UnsafeMutablePointer<T> {
        let tp = p.bindMemory(to: T.self, capacity: 1)
        var size = MemoryLayout<T>.size
                tp.pointee.data = p.advanced(by: size).bindMemory(to: CChar, capacity:1)
                size += MemoryLayout<CChar>.size*tp.pointee.length
        return tp
    }
}

extension es_thread_t : ES_Memory {
    typealias T = es_thread_t
}
extension es_event_access_t : ES_Memory {
    typealias T = es_event_access_t
}
extension es_event_chdir_t : ES_Memory {
    typealias T = es_event_chdir_t
}
extension es_event_chroot_t : ES_Memory {
    typealias T = es_event_chroot_t
}
extension es_event_clone_t : ES_Memory {
    typealias T = es_event_clone_t
}
extension es_event_close_t : ES_Memory {
    typealias T = es_event_close_t
}
extension es_event_copyfile_t : ES_Memory {
    typealias T = es_event_copyfile_t
}
extension es_event_create_t : ES_Memory {
    typealias T = es_event_create_t
}
extension es_event_cs_invalidated_t : ES_Memory {
    typealias T = es_event_cs_invalidated_t
}
extension es_event_deleteextattr_t : ES_Memory {
    typealias T = es_event_deleteextattr_t
}
extension es_event_dup_t : ES_Memory {
    typealias T = es_event_dup_t
}
extension es_event_exchangedata_t : ES_Memory {
    typealias T = es_event_exchangedata_t
}
extension es_event_exec_t : ES_Memory {
    typealias T = es_event_exec_t
}
extension es_event_exit_t : ES_Memory {
    typealias T = es_event_exit_t
}
extension es_event_file_provider_materialize_t : ES_Memory {
    typealias T = es_event_file_provider_materialize_t
}
extension es_event_file_provider_update_t : ES_Memory {
    typealias T = es_event_file_provider_update_t
}
extension es_event_fcntl_t : ES_Memory {
    typealias T = es_event_fcntl_t
}
extension es_event_fork_t : ES_Memory {
    typealias T = es_event_fork_t
}
extension es_event_fsgetpath_t : ES_Memory {
    typealias T = es_event_fsgetpath_t
}
extension es_event_get_task_t : ES_Memory {
    typealias T = es_event_get_task_t
}
extension es_event_get_task_read_t : ES_Memory {
    typealias T = es_event_get_task_read_t
}
extension es_event_get_task_inspect_t : ES_Memory {
    typealias T = es_event_get_task_inspect_t
}
extension es_event_get_task_name_t : ES_Memory {
    typealias T = es_event_get_task_name_t
}
extension es_event_getattrlist_t : ES_Memory {
    typealias T = es_event_getattrlist_t
}
extension es_event_getextattr_t : ES_Memory {
    typealias T = es_event_getextattr_t
}
extension es_event_iokit_open_t : ES_Memory {
    typealias T = es_event_iokit_open_t
}
extension es_event_kextload_t : ES_Memory {
    typealias T = es_event_kextload_t
}
extension es_event_kextunload_t : ES_Memory {
    typealias T = es_event_kextunload_t
}
extension es_event_link_t : ES_Memory {
    typealias T = es_event_link_t
}
extension es_event_listextattr_t : ES_Memory {
    typealias T = es_event_listextattr_t
}
extension es_event_lookup_t : ES_Memory {
    typealias T = es_event_lookup_t
}
extension es_event_mmap_t : ES_Memory {
    typealias T = es_event_mmap_t
}
extension es_event_mount_t : ES_Memory {
    typealias T = es_event_mount_t
}
extension es_event_mprotect_t : ES_Memory {
    typealias T = es_event_mprotect_t
}
extension es_event_open_t : ES_Memory {
    typealias T = es_event_open_t
}
extension es_event_proc_check_t : ES_Memory {
    typealias T = es_event_proc_check_t
}
extension es_event_proc_suspend_resume_t : ES_Memory {
    typealias T = es_event_proc_suspend_resume_t
}
extension es_event_pty_close_t : ES_Memory {
    typealias T = es_event_pty_close_t
}
extension es_event_pty_grant_t : ES_Memory {
    typealias T = es_event_pty_grant_t
}
extension es_event_readdir_t : ES_Memory {
    typealias T = es_event_readdir_t
}
extension es_event_readlink_t : ES_Memory {
    typealias T = es_event_readlink_t
}
extension es_event_remote_thread_create_t : ES_Memory {
    typealias T = es_event_remote_thread_create_t
}
extension es_event_remount_t : ES_Memory {
    typealias T = es_event_remount_t
}
extension es_event_rename_t : ES_Memory {
    typealias T = es_event_rename_t
}
extension es_event_searchfs_t : ES_Memory {
    typealias T = es_event_searchfs_t
}
extension es_event_setacl_t : ES_Memory {
    typealias T = es_event_setacl_t
}
extension es_event_setattrlist_t : ES_Memory {
    typealias T = es_event_setattrlist_t
}
extension es_event_setextattr_t : ES_Memory {
    typealias T = es_event_setextattr_t
}
extension es_event_setflags_t : ES_Memory {
    typealias T = es_event_setflags_t
}
extension es_event_setmode_t : ES_Memory {
    typealias T = es_event_setmode_t
}
extension es_event_setowner_t : ES_Memory {
    typealias T = es_event_setowner_t
}
extension es_event_settime_t : ES_Memory {
    typealias T = es_event_settime_t
}
extension es_event_setuid_t : ES_Memory {
    typealias T = es_event_setuid_t
}
extension es_event_setgid_t : ES_Memory {
    typealias T = es_event_setgid_t
}
extension es_event_seteuid_t : ES_Memory {
    typealias T = es_event_seteuid_t
}
extension es_event_setegid_t : ES_Memory {
    typealias T = es_event_setegid_t
}
extension es_event_setreuid_t : ES_Memory {
    typealias T = es_event_setreuid_t
}
extension es_event_setregid_t : ES_Memory {
    typealias T = es_event_setregid_t
}
extension es_event_signal_t : ES_Memory {
    typealias T = es_event_signal_t
}
extension es_event_stat_t : ES_Memory {
    typealias T = es_event_stat_t
}
extension es_event_trace_t : ES_Memory {
    typealias T = es_event_trace_t
}
extension es_event_truncate_t : ES_Memory {
    typealias T = es_event_truncate_t
}
extension es_event_uipc_bind_t : ES_Memory {
    typealias T = es_event_uipc_bind_t
}
extension es_event_uipc_connect_t : ES_Memory {
    typealias T = es_event_uipc_connect_t
}
extension es_event_unlink_t : ES_Memory {
    typealias T = es_event_unlink_t
}
extension es_event_unmount_t : ES_Memory {
    typealias T = es_event_unmount_t
}
extension es_event_utimes_t : ES_Memory {
    typealias T = es_event_utimes_t
}
extension es_event_write_t : ES_Memory {
    typealias T = es_event_write_t
}
extension es_event_authentication_t : ES_Memory {
    typealias T = es_event_authentication_t
}
extension es_event_xp_malware_detected_t : ES_Memory {
    typealias T = es_event_xp_malware_detected_t
}
extension es_event_xp_malware_remediated_t : ES_Memory {
    typealias T = es_event_xp_malware_remediated_t
}
extension es_event_lw_session_login_t : ES_Memory {
    typealias T = es_event_lw_session_login_t
}
extension es_event_lw_session_logout_t : ES_Memory {
    typealias T = es_event_lw_session_logout_t
}
extension es_event_lw_session_lock_t : ES_Memory {
    typealias T = es_event_lw_session_lock_t
}
extension es_event_lw_session_unlock_t : ES_Memory {
    typealias T = es_event_lw_session_unlock_t
}
extension es_event_screensharing_attach_t : ES_Memory {
    typealias T = es_event_screensharing_attach_t
}
extension es_event_screensharing_detach_t : ES_Memory {
    typealias T = es_event_screensharing_detach_t
}
extension es_event_openssh_login_t : ES_Memory {
    typealias T = es_event_openssh_login_t
}
extension es_event_openssh_logout_t : ES_Memory {
    typealias T = es_event_openssh_logout_t
}
extension es_event_login_login_t : ES_Memory {
    typealias T = es_event_login_login_t
}
extension es_event_login_logout_t : ES_Memory {
    typealias T = es_event_login_logout_t
}
extension es_event_btm_launch_item_add_t : ES_Memory {
    typealias T = es_event_btm_launch_item_add_t
}
extension es_event_btm_launch_item_remove_t : ES_Memory {
    typealias T = es_event_btm_launch_item_remove_t
}
