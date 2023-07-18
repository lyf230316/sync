//
//  demo.swift
//  json
//
//  Created by msi on 2023/7/4.
//

import Foundation
import EndpointSecurity

extension mach_msg_type_descriptor_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["pad1"] = self.pad1
            dic["pad2"] = self.pad2
            dic["pad3"] = self.pad3
            dic["type"] = self.type
        return dic
    }
}

extension mach_msg_port_descriptor_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["name"] = self.name
            dic["pad1"] = self.pad1
            dic["pad2"] = self.pad2
            dic["disposition"] = self.disposition
            dic["type"] = self.type
        return dic
    }
}

extension mach_msg_ool_descriptor32_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["address"] = self.address
            dic["size"] = self.size
            dic["deallocate"] = self.deallocate
            dic["copy"] = self.copy
            dic["pad1"] = self.pad1
            dic["type"] = self.type
        return dic
    }
}

extension mach_msg_ool_descriptor64_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["address"] = self.address
            dic["deallocate"] = self.deallocate
            dic["copy"] = self.copy
            dic["pad1"] = self.pad1
            dic["type"] = self.type
            dic["size"] = self.size
        return dic
    }
}

extension mach_msg_ool_descriptor_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["address"] = self.address
            dic["deallocate"] = self.deallocate
            dic["copy"] = self.copy
            dic["pad1"] = self.pad1
            dic["type"] = self.type
            dic["size"] = self.size
        return dic
    }
}

extension mach_msg_ool_ports_descriptor32_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["address"] = self.address
            dic["count"] = self.count
            dic["deallocate"] = self.deallocate
            dic["copy"] = self.copy
            dic["disposition"] = self.disposition
            dic["type"] = self.type
        return dic
    }
}

extension mach_msg_ool_ports_descriptor64_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["address"] = self.address
            dic["deallocate"] = self.deallocate
            dic["copy"] = self.copy
            dic["disposition"] = self.disposition
            dic["type"] = self.type
            dic["count"] = self.count
        return dic
    }
}

extension mach_msg_ool_ports_descriptor_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["address"] = self.address
            dic["deallocate"] = self.deallocate
            dic["copy"] = self.copy
            dic["disposition"] = self.disposition
            dic["type"] = self.type
            dic["count"] = self.count
        return dic
    }
}

extension mach_msg_guarded_port_descriptor32_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["context"] = self.context
            dic["name"] = self.name
            dic["flags"] = self.flags
            dic["disposition"] = self.disposition
            dic["type"] = self.type
        return dic
    }
}

extension mach_msg_guarded_port_descriptor64_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["context"] = self.context
            dic["flags"] = self.flags
            dic["disposition"] = self.disposition
            dic["type"] = self.type
            dic["name"] = self.name
        return dic
    }
}

extension mach_msg_guarded_port_descriptor_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["context"] = self.context
            dic["flags"] = self.flags
            dic["disposition"] = self.disposition
            dic["type"] = self.type
            dic["name"] = self.name
        return dic
    }
}

extension mach_msg_body_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["msgh_descriptor_count"] = self.msgh_descriptor_count
        return dic
    }
}

extension mach_msg_header_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["msgh_bits"] = self.msgh_bits
            dic["msgh_size"] = self.msgh_size
            dic["msgh_remote_port"] = self.msgh_remote_port
            dic["msgh_local_port"] = self.msgh_local_port
            dic["msgh_voucher_port"] = self.msgh_voucher_port
            dic["msgh_id"] = self.msgh_id
        return dic
    }
}

extension mach_msg_base_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["header"] = self.header.dic()
            dic["body"] = self.body.dic()
        return dic
    }
}

extension mach_msg_trailer_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["msgh_trailer_type"] = self.msgh_trailer_type
            dic["msgh_trailer_size"] = self.msgh_trailer_size
        return dic
    }
}

extension mach_msg_seqno_trailer_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["msgh_trailer_type"] = self.msgh_trailer_type
            dic["msgh_trailer_size"] = self.msgh_trailer_size
            dic["msgh_seqno"] = self.msgh_seqno
        return dic
    }
}

extension security_token_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["val"] = self.val
        return dic
    }
}

extension mach_msg_security_trailer_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["msgh_trailer_type"] = self.msgh_trailer_type
            dic["msgh_trailer_size"] = self.msgh_trailer_size
            dic["msgh_seqno"] = self.msgh_seqno
            dic["msgh_sender"] = self.msgh_sender.dic()
        return dic
    }
}

extension audit_token_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["val"] = self.val
        return dic
    }
}

extension mach_msg_audit_trailer_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["msgh_trailer_type"] = self.msgh_trailer_type
            dic["msgh_trailer_size"] = self.msgh_trailer_size
            dic["msgh_seqno"] = self.msgh_seqno
            dic["msgh_sender"] = self.msgh_sender.dic()
            dic["msgh_audit"] = self.msgh_audit.dic()
        return dic
    }
}

extension mach_msg_context_trailer_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["msgh_trailer_type"] = self.msgh_trailer_type
            dic["msgh_trailer_size"] = self.msgh_trailer_size
            dic["msgh_seqno"] = self.msgh_seqno
            dic["msgh_sender"] = self.msgh_sender.dic()
            dic["msgh_audit"] = self.msgh_audit.dic()
            dic["msgh_context"] = self.msgh_context
        return dic
    }
}

extension msg_labels_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["sender"] = self.sender
        return dic
    }
}

extension mach_msg_mac_trailer_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["msgh_trailer_type"] = self.msgh_trailer_type
            dic["msgh_trailer_size"] = self.msgh_trailer_size
            dic["msgh_seqno"] = self.msgh_seqno
            dic["msgh_sender"] = self.msgh_sender.dic()
            dic["msgh_audit"] = self.msgh_audit.dic()
            dic["msgh_context"] = self.msgh_context
            dic["msgh_ad"] = self.msgh_ad
            dic["msgh_labels"] = self.msgh_labels.dic()
        return dic
    }
}

extension mach_msg_empty_send_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["header"] = self.header.dic()
        return dic
    }
}

extension mach_msg_empty_rcv_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["header"] = self.header.dic()
            dic["trailer"] = self.trailer.dic()
        return dic
    }
}

extension es_event_id_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
        return dic
    }
}

extension es_token_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["size"] = self.size
            dic["data"] = self.data
        return dic
    }
}

extension es_muted_path_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["type"] = self.type
            dic["event_count"] = self.event_count
            dic["events"] = self.events
            dic["path"] = NSString(bytes: self.path.data, length: self.path.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_muted_paths_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["count"] = self.count
            dic["paths"] = self.paths
        return dic
    }
}

extension es_muted_process_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["audit_token"] = self.audit_token.dic()
            dic["event_count"] = self.event_count
            dic["events"] = self.events
        return dic
    }
}

extension es_muted_processes_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["count"] = self.count
            dic["processes"] = self.processes
        return dic
    }
}

extension ntsid_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["sid_kind"] = self.sid_kind
            dic["sid_authcount"] = self.sid_authcount
            dic["sid_authority"] = self.sid_authority
            dic["sid_authorities"] = self.sid_authorities
        return dic
    }
}

extension es_file_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["path"] = NSString(bytes: self.path.data, length: self.path.length, encoding: NSUTF8StringEncoding)! as String
            dic["path_truncated"] = self.path_truncated
            dic["stat"] = self.stat
        return dic
    }
}

extension es_thread_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["thread_id"] = self.thread_id
        return dic
    }
}

extension es_process_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["audit_token"] = self.audit_token.dic()
            dic["ppid"] = self.ppid
            dic["original_ppid"] = self.original_ppid
            dic["group_id"] = self.group_id
            dic["session_id"] = self.session_id
            dic["codesigning_flags"] = self.codesigning_flags
            dic["is_platform_binary"] = self.is_platform_binary
            dic["is_es_client"] = self.is_es_client
            dic["cdhash"] = self.cdhash
            dic["signing_id"] = NSString(bytes: self.signing_id.data, length: self.signing_id.length, encoding: NSUTF8StringEncoding)! as String
            dic["team_id"] = NSString(bytes: self.team_id.data, length: self.team_id.length, encoding: NSUTF8StringEncoding)! as String
            dic["executable"] = self.executable.pointee.dic()
            if let tty = self.tty {
               dic["tty"] = tty.pointee.dic()
            }
            dic["start_time"] = self.start_time
            dic["responsible_audit_token"] = self.responsible_audit_token.dic()
            dic["parent_audit_token"] = self.parent_audit_token.dic()
        return dic
    }
}

extension es_thread_state_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["flavor"] = self.flavor
            dic["state"] = self.state.dic()
        return dic
    }
}

extension es_fd_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["fd"] = self.fd
            dic["fdtype"] = self.fdtype
        return dic
    }
}

extension es_btm_launch_item_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["item_type"] = self.item_type
            dic["legacy"] = self.legacy
            dic["managed"] = self.managed
            dic["uid"] = self.uid
            dic["item_url"] = NSString(bytes: self.item_url.data, length: self.item_url.length, encoding: NSUTF8StringEncoding)! as String
            dic["app_url"] = NSString(bytes: self.app_url.data, length: self.app_url.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_exec_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_open_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["fflag"] = self.fflag
            dic["file"] = self.file.pointee.dic()
        return dic
    }
}

extension es_event_kextload_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["identifier"] = NSString(bytes: self.identifier.data, length: self.identifier.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_kextunload_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["identifier"] = NSString(bytes: self.identifier.data, length: self.identifier.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_unlink_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
            dic["parent_dir"] = self.parent_dir.pointee.dic()
        return dic
    }
}

extension es_event_mmap_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["protection"] = self.protection
            dic["max_protection"] = self.max_protection
            dic["flags"] = self.flags
            dic["file_pos"] = self.file_pos
            dic["source"] = self.source.pointee.dic()
        return dic
    }
}

extension es_event_link_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["source"] = self.source.pointee.dic()
            dic["target_dir"] = self.target_dir.pointee.dic()
            dic["target_filename"] = NSString(bytes: self.target_filename.data, length: self.target_filename.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_mount_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["statfs"] = self.statfs
        return dic
    }
}

extension es_event_unmount_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["statfs"] = self.statfs
        return dic
    }
}

extension es_event_remount_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["statfs"] = self.statfs
        return dic
    }
}

extension es_event_fork_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["child"] = self.child.pointee.dic()
        return dic
    }
}

extension es_event_mprotect_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["protection"] = self.protection
            dic["address"] = self.address
            dic["size"] = self.size
        return dic
    }
}

extension es_event_signal_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["sig"] = self.sig
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_rename_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["source"] = self.source.pointee.dic()
            dic["destination_type"] = self.destination_type
            switch self.destination_type {
                case ES_DESTINATION_TYPE_EXISTING_FILE :
                    dic["existing_file"] = self.destination.existing_file.pointee.dic()
                
                case ES_DESTINATION_TYPE_NEW_PATH :
                        dic["dir"] = self.destination.new_path.dir.pointee.dic()
                        dic["filename"] = NSString(bytes: self.destination.new_path.filename.data, length: self.destination.new_path.filename.length, encoding: NSUTF8StringEncoding)! as String
                
                default:
                    break;
            }

        return dic
    }
}

extension es_event_setextattr_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
            dic["extattr"] = NSString(bytes: self.extattr.data, length: self.extattr.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_getextattr_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
            dic["extattr"] = NSString(bytes: self.extattr.data, length: self.extattr.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_deleteextattr_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
            dic["extattr"] = NSString(bytes: self.extattr.data, length: self.extattr.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_setmode_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["mode"] = self.mode
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_setflags_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["flags"] = self.flags
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_setowner_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["uid"] = self.uid
            dic["gid"] = self.gid
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_close_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["modified"] = self.modified
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_create_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["destination_type"] = self.destination_type
            switch self.destination_type {
                case ES_DESTINATION_TYPE_EXISTING_FILE :
                    dic["existing_file"] = self.destination.existing_file.pointee.dic()

                case ES_DESTINATION_TYPE_NEW_PATH :
                        dic["dir"] = self.destination.new_path.dir.pointee.dic()
                        dic["filename"] = NSString(bytes: self.destination.new_path.filename.data, length: self.destination.new_path.filename.length, encoding: NSUTF8StringEncoding)! as String
                
                default:
                    break;
            }

        return dic
    }
}

extension es_event_exit_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["stat"] = self.stat
        return dic
    }
}

extension es_event_exchangedata_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["file1"] = self.file1.pointee.dic()
            dic["file2"] = self.file2.pointee.dic()
        return dic
    }
}

extension es_event_write_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_truncate_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_chdir_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_stat_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_chroot_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_listextattr_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_iokit_open_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["user_client_type"] = self.user_client_type
            dic["user_client_class"] = NSString(bytes: self.user_client_class.data, length: self.user_client_class.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_get_task_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
            dic["type"] = self.type
        return dic
    }
}

extension es_event_get_task_read_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
            dic["type"] = self.type
        return dic
    }
}

extension es_event_get_task_inspect_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
            dic["type"] = self.type
        return dic
    }
}

extension es_event_get_task_name_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
            dic["type"] = self.type
        return dic
    }
}

extension es_event_getattrlist_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["attrlist"] = self.attrlist
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_setattrlist_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["attrlist"] = self.attrlist
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_file_provider_update_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["source"] = self.source.pointee.dic()
            dic["target_path"] = NSString(bytes: self.target_path.data, length: self.target_path.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_file_provider_materialize_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["instigator"] = self.instigator.pointee.dic()
            dic["source"] = self.source.pointee.dic()
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_readlink_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["source"] = self.source.pointee.dic()
        return dic
    }
}

extension es_event_lookup_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["source_dir"] = self.source_dir.pointee.dic()
            dic["relative_target"] = NSString(bytes: self.relative_target.data, length: self.relative_target.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_access_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["mode"] = self.mode
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_utimes_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
            dic["atime"] = self.atime
            dic["mtime"] = self.mtime
        return dic
    }
}

extension es_event_clone_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["source"] = self.source.pointee.dic()
            dic["target_dir"] = self.target_dir.pointee.dic()
            dic["target_name"] = NSString(bytes: self.target_name.data, length: self.target_name.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_copyfile_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["source"] = self.source.pointee.dic()
            if let target_file = self.target_file {
               dic["target_file"] = target_file.pointee.dic()
            }
            dic["target_dir"] = self.target_dir.pointee.dic()
            dic["target_name"] = NSString(bytes: self.target_name.data, length: self.target_name.length, encoding: NSUTF8StringEncoding)! as String
            dic["mode"] = self.mode
            dic["flags"] = self.flags
        return dic
    }
}

extension es_event_fcntl_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
            dic["cmd"] = self.cmd
        return dic
    }
}

extension es_event_readdir_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_fsgetpath_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_settime_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
        return dic
    }
}

extension es_event_dup_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_uipc_bind_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["dir"] = self.dir.pointee.dic()
            dic["filename"] = NSString(bytes: self.filename.data, length: self.filename.length, encoding: NSUTF8StringEncoding)! as String
            dic["mode"] = self.mode
        return dic
    }
}

extension es_event_uipc_connect_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["file"] = self.file.pointee.dic()
            dic["domain"] = self.domain
            dic["type"] = self.type
            dic["protocol"] = self.protocol
        return dic
    }
}

extension es_event_setacl_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
            dic["set_or_clear"] = self.set_or_clear
        return dic
    }
}

extension es_event_pty_grant_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["dev"] = self.dev
        return dic
    }
}

extension es_event_pty_close_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["dev"] = self.dev
        return dic
    }
}

extension es_event_proc_check_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            if let target = self.target {
               dic["target"] = target.pointee.dic()
            }
            dic["type"] = self.type
            dic["flavor"] = self.flavor
        return dic
    }
}

extension es_event_searchfs_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["attrlist"] = self.attrlist
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_proc_suspend_resume_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            if let target = self.target {
               dic["target"] = target.pointee.dic()
            }
            dic["type"] = self.type
        return dic
    }
}

extension es_event_cs_invalidated_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
        return dic
    }
}

extension es_event_trace_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
        return dic
    }
}

extension es_event_remote_thread_create_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["target"] = self.target.pointee.dic()
            if let thread_state = self.thread_state {
               dic["thread_state"] = thread_state.pointee.dic()
            }
        return dic
    }
}

extension es_event_setuid_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["uid"] = self.uid
        return dic
    }
}

extension es_event_setgid_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["gid"] = self.gid
        return dic
    }
}

extension es_event_seteuid_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["euid"] = self.euid
        return dic
    }
}

extension es_event_setegid_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["egid"] = self.egid
        return dic
    }
}

extension es_event_setreuid_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["ruid"] = self.ruid
            dic["euid"] = self.euid
        return dic
    }
}

extension es_event_setregid_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["rgid"] = self.rgid
            dic["egid"] = self.egid
        return dic
    }
}

extension es_event_authentication_od_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["instigator"] = self.instigator.pointee.dic()
            dic["record_type"] = NSString(bytes: self.record_type.data, length: self.record_type.length, encoding: NSUTF8StringEncoding)! as String
            dic["record_name"] = NSString(bytes: self.record_name.data, length: self.record_name.length, encoding: NSUTF8StringEncoding)! as String
            dic["node_name"] = NSString(bytes: self.node_name.data, length: self.node_name.length, encoding: NSUTF8StringEncoding)! as String
            dic["db_path"] = NSString(bytes: self.db_path.data, length: self.db_path.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_authentication_touchid_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["instigator"] = self.instigator.pointee.dic()
            dic["touchid_mode"] = self.touchid_mode
            dic["has_uid"] = self.has_uid
        return dic
    }
}

extension es_event_authentication_token_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["instigator"] = self.instigator.pointee.dic()
            dic["pubkey_hash"] = NSString(bytes: self.pubkey_hash.data, length: self.pubkey_hash.length, encoding: NSUTF8StringEncoding)! as String
            dic["token_id"] = NSString(bytes: self.token_id.data, length: self.token_id.length, encoding: NSUTF8StringEncoding)! as String
            dic["kerberos_principal"] = NSString(bytes: self.kerberos_principal.data, length: self.kerberos_principal.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_authentication_auto_unlock_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["username"] = NSString(bytes: self.username.data, length: self.username.length, encoding: NSUTF8StringEncoding)! as String
            dic["type"] = self.type
        return dic
    }
}

extension es_event_authentication_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["success"] = self.success
            dic["type"] = self.type
            switch self.type {
                case ES_AUTHENTICATION_TYPE_OD :
                    dic["od"] = self.data.od.pointee.dic()
                
                case ES_AUTHENTICATION_TYPE_TOUCHID :
                    dic["touchid"] = self.data.touchid.pointee.dic()
                
                case ES_AUTHENTICATION_TYPE_TOKEN :
                    dic["token"] = self.data.token.pointee.dic()
                
                case ES_AUTHENTICATION_TYPE_AUTO_UNLOCK :
                    dic["auto_unlock"] = self.data.auto_unlock.pointee.dic()
                
                default:
                    break;
            }

        return dic
    }
}

extension es_event_xp_malware_detected_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["signature_version"] = NSString(bytes: self.signature_version.data, length: self.signature_version.length, encoding: NSUTF8StringEncoding)! as String
            dic["malware_identifier"] = NSString(bytes: self.malware_identifier.data, length: self.malware_identifier.length, encoding: NSUTF8StringEncoding)! as String
            dic["incident_identifier"] = NSString(bytes: self.incident_identifier.data, length: self.incident_identifier.length, encoding: NSUTF8StringEncoding)! as String
            dic["detected_path"] = NSString(bytes: self.detected_path.data, length: self.detected_path.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_xp_malware_remediated_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["signature_version"] = NSString(bytes: self.signature_version.data, length: self.signature_version.length, encoding: NSUTF8StringEncoding)! as String
            dic["malware_identifier"] = NSString(bytes: self.malware_identifier.data, length: self.malware_identifier.length, encoding: NSUTF8StringEncoding)! as String
            dic["incident_identifier"] = NSString(bytes: self.incident_identifier.data, length: self.incident_identifier.length, encoding: NSUTF8StringEncoding)! as String
            dic["action_type"] = NSString(bytes: self.action_type.data, length: self.action_type.length, encoding: NSUTF8StringEncoding)! as String
            dic["success"] = self.success
            dic["result_description"] = NSString(bytes: self.result_description.data, length: self.result_description.length, encoding: NSUTF8StringEncoding)! as String
            dic["remediated_path"] = NSString(bytes: self.remediated_path.data, length: self.remediated_path.length, encoding: NSUTF8StringEncoding)! as String
            if let remediated_process_audit_token = self.remediated_process_audit_token {
               dic["remediated_process_audit_token"] = remediated_process_audit_token.pointee.dic()
            }
        return dic
    }
}

extension es_event_lw_session_login_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["username"] = NSString(bytes: self.username.data, length: self.username.length, encoding: NSUTF8StringEncoding)! as String
            dic["graphical_session_id"] = self.graphical_session_id
        return dic
    }
}

extension es_event_lw_session_logout_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["username"] = NSString(bytes: self.username.data, length: self.username.length, encoding: NSUTF8StringEncoding)! as String
            dic["graphical_session_id"] = self.graphical_session_id
        return dic
    }
}

extension es_event_lw_session_lock_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["username"] = NSString(bytes: self.username.data, length: self.username.length, encoding: NSUTF8StringEncoding)! as String
            dic["graphical_session_id"] = self.graphical_session_id
        return dic
    }
}

extension es_event_lw_session_unlock_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["username"] = NSString(bytes: self.username.data, length: self.username.length, encoding: NSUTF8StringEncoding)! as String
            dic["graphical_session_id"] = self.graphical_session_id
        return dic
    }
}

extension es_event_screensharing_attach_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["success"] = self.success
            dic["source_address_type"] = self.source_address_type
            dic["source_address"] = NSString(bytes: self.source_address.data, length: self.source_address.length, encoding: NSUTF8StringEncoding)! as String
            dic["viewer_appleid"] = NSString(bytes: self.viewer_appleid.data, length: self.viewer_appleid.length, encoding: NSUTF8StringEncoding)! as String
            dic["authentication_type"] = NSString(bytes: self.authentication_type.data, length: self.authentication_type.length, encoding: NSUTF8StringEncoding)! as String
            dic["authentication_username"] = NSString(bytes: self.authentication_username.data, length: self.authentication_username.length, encoding: NSUTF8StringEncoding)! as String
            dic["session_username"] = NSString(bytes: self.session_username.data, length: self.session_username.length, encoding: NSUTF8StringEncoding)! as String
            dic["existing_session"] = self.existing_session
            dic["graphical_session_id"] = self.graphical_session_id
        return dic
    }
}

extension es_event_screensharing_detach_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["source_address_type"] = self.source_address_type
            dic["source_address"] = NSString(bytes: self.source_address.data, length: self.source_address.length, encoding: NSUTF8StringEncoding)! as String
            dic["viewer_appleid"] = NSString(bytes: self.viewer_appleid.data, length: self.viewer_appleid.length, encoding: NSUTF8StringEncoding)! as String
            dic["graphical_session_id"] = self.graphical_session_id
        return dic
    }
}

extension es_event_openssh_login_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["success"] = self.success
            dic["result_type"] = self.result_type
            dic["source_address_type"] = self.source_address_type
            dic["source_address"] = NSString(bytes: self.source_address.data, length: self.source_address.length, encoding: NSUTF8StringEncoding)! as String
            dic["username"] = NSString(bytes: self.username.data, length: self.username.length, encoding: NSUTF8StringEncoding)! as String
            dic["has_uid"] = self.has_uid
        return dic
    }
}

extension es_event_openssh_logout_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["source_address_type"] = self.source_address_type
            dic["source_address"] = NSString(bytes: self.source_address.data, length: self.source_address.length, encoding: NSUTF8StringEncoding)! as String
            dic["username"] = NSString(bytes: self.username.data, length: self.username.length, encoding: NSUTF8StringEncoding)! as String
            dic["uid"] = self.uid
        return dic
    }
}

extension es_event_login_login_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["success"] = self.success
            dic["failure_message"] = NSString(bytes: self.failure_message.data, length: self.failure_message.length, encoding: NSUTF8StringEncoding)! as String
            dic["username"] = NSString(bytes: self.username.data, length: self.username.length, encoding: NSUTF8StringEncoding)! as String
            dic["has_uid"] = self.has_uid
        return dic
    }
}

extension es_event_login_logout_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["username"] = NSString(bytes: self.username.data, length: self.username.length, encoding: NSUTF8StringEncoding)! as String
            dic["uid"] = self.uid
        return dic
    }
}

extension es_event_btm_launch_item_add_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            if let instigator = self.instigator {
               dic["instigator"] = instigator.pointee.dic()
            }
            if let app = self.app {
               dic["app"] = app.pointee.dic()
            }
            dic["item"] = self.item.pointee.dic()
            dic["executable_path"] = NSString(bytes: self.executable_path.data, length: self.executable_path.length, encoding: NSUTF8StringEncoding)! as String
        return dic
    }
}

extension es_event_btm_launch_item_remove_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            if let instigator = self.instigator {
               dic["instigator"] = instigator.pointee.dic()
            }
            if let app = self.app {
               dic["app"] = app.pointee.dic()
            }
            dic["item"] = self.item.pointee.dic()
        return dic
    }
}

extension es_result_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["result_type"] = self.result_type
            switch self.result_type {
                case ES_RESULT_TYPE_AUTH :
                    dic["auth"] = self.result.auth
                
                case ES_RESULT_TYPE_FLAGS :
                    dic["flags"] = self.result.flags
                
                default:
                    break;
            }

        return dic
    }
}

extension es_message_t {
    func dic() -> [String: Any] {
        var dic: [String: Any] = [:]
            dic["version"] = self.version
            dic["time"] = self.time
            dic["mach_time"] = self.mach_time
            dic["deadline"] = self.deadline
            dic["process"] = self.process.pointee.dic()
            dic["seq_num"] = self.seq_num
            dic["action_type"] = self.action_type
            switch self.action_type {
                case ES_ACTION_TYPE_AUTH :
                    dic["auth"] = self.action.auth.dic()
                
                case ES_ACTION_TYPE_NOTIFY :
                    dic["notify"] = self.action.notify.dic()
                
                default:
                    break;
            }

            dic["event_type"] = self.event_type
            switch self.event_type {
                case ES_EVENT_TYPE_AUTH_EXEC :
                    dic["exec"] = self.event.exec.dic()
                
                case ES_EVENT_TYPE_AUTH_OPEN :
                    dic["open"] = self.event.open.dic()
                
                case ES_EVENT_TYPE_AUTH_KEXTLOAD :
                    dic["kextload"] = self.event.kextload.dic()
                
                case ES_EVENT_TYPE_AUTH_MMAP :
                    dic["mmap"] = self.event.mmap.dic()
                
                case ES_EVENT_TYPE_AUTH_MPROTECT :
                    dic["mprotect"] = self.event.mprotect.dic()
                
                case ES_EVENT_TYPE_AUTH_MOUNT :
                    dic["mount"] = self.event.mount.dic()
                
                case ES_EVENT_TYPE_AUTH_RENAME :
                    dic["rename"] = self.event.rename.dic()
                
                case ES_EVENT_TYPE_AUTH_SIGNAL :
                    dic["signal"] = self.event.signal.dic()
                
                case ES_EVENT_TYPE_AUTH_UNLINK :
                    dic["unlink"] = self.event.unlink.dic()
                
                case ES_EVENT_TYPE_NOTIFY_EXEC :
                    dic["exec"] = self.event.exec.dic()
                
                case ES_EVENT_TYPE_NOTIFY_OPEN :
                    dic["open"] = self.event.open.dic()
                
                case ES_EVENT_TYPE_NOTIFY_FORK :
                    dic["fork"] = self.event.fork.dic()
                
                case ES_EVENT_TYPE_NOTIFY_CLOSE :
                    dic["close"] = self.event.close.dic()
                
                case ES_EVENT_TYPE_NOTIFY_CREATE :
                    dic["create"] = self.event.create.dic()
                
                case ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA :
                    dic["exchangedata"] = self.event.exchangedata.dic()
                
                case ES_EVENT_TYPE_NOTIFY_EXIT :
                    dic["exit"] = self.event.exit.dic()
                
                case ES_EVENT_TYPE_NOTIFY_GET_TASK :
                    dic["get_task"] = self.event.get_task.dic()
                
                case ES_EVENT_TYPE_NOTIFY_KEXTLOAD :
                    dic["kextload"] = self.event.kextload.dic()
                
                case ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD :
                    dic["kextunload"] = self.event.kextunload.dic()
                
                case ES_EVENT_TYPE_NOTIFY_LINK :
                    dic["link"] = self.event.link.dic()
                
                case ES_EVENT_TYPE_NOTIFY_MMAP :
                    dic["mmap"] = self.event.mmap.dic()
                
                case ES_EVENT_TYPE_NOTIFY_MPROTECT :
                    dic["mprotect"] = self.event.mprotect.dic()
                
                case ES_EVENT_TYPE_NOTIFY_MOUNT :
                    dic["mount"] = self.event.mount.dic()
                
                case ES_EVENT_TYPE_NOTIFY_UNMOUNT :
                    dic["unmount"] = self.event.unmount.dic()
                
                case ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN :
                    dic["iokit_open"] = self.event.iokit_open.dic()
                
                case ES_EVENT_TYPE_NOTIFY_RENAME :
                    dic["rename"] = self.event.rename.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SETATTRLIST :
                    dic["setattrlist"] = self.event.setattrlist.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SETEXTATTR :
                    dic["setextattr"] = self.event.setextattr.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SETFLAGS :
                    dic["setflags"] = self.event.setflags.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SETMODE :
                    dic["setmode"] = self.event.setmode.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SETOWNER :
                    dic["setowner"] = self.event.setowner.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SIGNAL :
                    dic["signal"] = self.event.signal.dic()
                
                case ES_EVENT_TYPE_NOTIFY_UNLINK :
                    dic["unlink"] = self.event.unlink.dic()
                
                case ES_EVENT_TYPE_NOTIFY_WRITE :
                    dic["write"] = self.event.write.dic()
                
                case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_MATERIALIZE :
                    dic["file_provider_materialize"] = self.event.file_provider_materialize.dic()
                
                case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE :
                    dic["file_provider_materialize"] = self.event.file_provider_materialize.dic()
                
                case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_UPDATE :
                    dic["file_provider_update"] = self.event.file_provider_update.dic()
                
                case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE :
                    dic["file_provider_update"] = self.event.file_provider_update.dic()
                
                case ES_EVENT_TYPE_AUTH_READLINK :
                    dic["readlink"] = self.event.readlink.dic()
                
                case ES_EVENT_TYPE_NOTIFY_READLINK :
                    dic["readlink"] = self.event.readlink.dic()
                
                case ES_EVENT_TYPE_AUTH_TRUNCATE :
                    dic["truncate"] = self.event.truncate.dic()
                
                case ES_EVENT_TYPE_NOTIFY_TRUNCATE :
                    dic["truncate"] = self.event.truncate.dic()
                
                case ES_EVENT_TYPE_AUTH_LINK :
                    dic["link"] = self.event.link.dic()
                
                case ES_EVENT_TYPE_NOTIFY_LOOKUP :
                    dic["lookup"] = self.event.lookup.dic()
                
                case ES_EVENT_TYPE_AUTH_CREATE :
                    dic["create"] = self.event.create.dic()
                
                case ES_EVENT_TYPE_AUTH_SETATTRLIST :
                    dic["setattrlist"] = self.event.setattrlist.dic()
                
                case ES_EVENT_TYPE_AUTH_SETEXTATTR :
                    dic["setextattr"] = self.event.setextattr.dic()
                
                case ES_EVENT_TYPE_AUTH_SETFLAGS :
                    dic["setflags"] = self.event.setflags.dic()
                
                case ES_EVENT_TYPE_AUTH_SETMODE :
                    dic["setmode"] = self.event.setmode.dic()
                
                case ES_EVENT_TYPE_AUTH_SETOWNER :
                    dic["setowner"] = self.event.setowner.dic()
                
                case ES_EVENT_TYPE_AUTH_CHDIR :
                    dic["chdir"] = self.event.chdir.dic()
                
                case ES_EVENT_TYPE_NOTIFY_CHDIR :
                    dic["chdir"] = self.event.chdir.dic()
                
                case ES_EVENT_TYPE_AUTH_GETATTRLIST :
                    dic["getattrlist"] = self.event.getattrlist.dic()
                
                case ES_EVENT_TYPE_NOTIFY_GETATTRLIST :
                    dic["getattrlist"] = self.event.getattrlist.dic()
                
                case ES_EVENT_TYPE_NOTIFY_STAT :
                    dic["stat"] = self.event.stat.dic()
                
                case ES_EVENT_TYPE_NOTIFY_ACCESS :
                    dic["access"] = self.event.access.dic()
                
                case ES_EVENT_TYPE_AUTH_CHROOT :
                    dic["chroot"] = self.event.chroot.dic()
                
                case ES_EVENT_TYPE_NOTIFY_CHROOT :
                    dic["chroot"] = self.event.chroot.dic()
                
                case ES_EVENT_TYPE_AUTH_UTIMES :
                    dic["utimes"] = self.event.utimes.dic()
                
                case ES_EVENT_TYPE_NOTIFY_UTIMES :
                    dic["utimes"] = self.event.utimes.dic()
                
                case ES_EVENT_TYPE_AUTH_CLONE :
                    dic["clone"] = self.event.clone.dic()
                
                case ES_EVENT_TYPE_NOTIFY_CLONE :
                    dic["clone"] = self.event.clone.dic()
                
                case ES_EVENT_TYPE_NOTIFY_FCNTL :
                    dic["fcntl"] = self.event.fcntl.dic()
                
                case ES_EVENT_TYPE_AUTH_GETEXTATTR :
                    dic["getextattr"] = self.event.getextattr.dic()
                
                case ES_EVENT_TYPE_NOTIFY_GETEXTATTR :
                    dic["getextattr"] = self.event.getextattr.dic()
                
                case ES_EVENT_TYPE_AUTH_LISTEXTATTR :
                    dic["listextattr"] = self.event.listextattr.dic()
                
                case ES_EVENT_TYPE_NOTIFY_LISTEXTATTR :
                    dic["listextattr"] = self.event.listextattr.dic()
                
                case ES_EVENT_TYPE_AUTH_READDIR :
                    dic["readdir"] = self.event.readdir.dic()
                
                case ES_EVENT_TYPE_NOTIFY_READDIR :
                    dic["readdir"] = self.event.readdir.dic()
                
                case ES_EVENT_TYPE_AUTH_DELETEEXTATTR :
                    dic["deleteextattr"] = self.event.deleteextattr.dic()
                
                case ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR :
                    dic["deleteextattr"] = self.event.deleteextattr.dic()
                
                case ES_EVENT_TYPE_AUTH_FSGETPATH :
                    dic["fsgetpath"] = self.event.fsgetpath.dic()
                
                case ES_EVENT_TYPE_NOTIFY_FSGETPATH :
                    dic["fsgetpath"] = self.event.fsgetpath.dic()
                
                case ES_EVENT_TYPE_NOTIFY_DUP :
                    dic["dup"] = self.event.dup.dic()
                
                case ES_EVENT_TYPE_AUTH_SETTIME :
                    dic["settime"] = self.event.settime.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SETTIME :
                    dic["settime"] = self.event.settime.dic()
                
                case ES_EVENT_TYPE_NOTIFY_UIPC_BIND :
                    dic["uipc_bind"] = self.event.uipc_bind.dic()
                
                case ES_EVENT_TYPE_AUTH_UIPC_BIND :
                    dic["uipc_bind"] = self.event.uipc_bind.dic()
                
                case ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT :
                    dic["uipc_connect"] = self.event.uipc_connect.dic()
                
                case ES_EVENT_TYPE_AUTH_UIPC_CONNECT :
                    dic["uipc_connect"] = self.event.uipc_connect.dic()
                
                case ES_EVENT_TYPE_AUTH_EXCHANGEDATA :
                    dic["exchangedata"] = self.event.exchangedata.dic()
                
                case ES_EVENT_TYPE_AUTH_SETACL :
                    dic["setacl"] = self.event.setacl.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SETACL :
                    dic["setacl"] = self.event.setacl.dic()
                
                case ES_EVENT_TYPE_NOTIFY_PTY_GRANT :
                    dic["pty_grant"] = self.event.pty_grant.dic()
                
                case ES_EVENT_TYPE_NOTIFY_PTY_CLOSE :
                    dic["pty_close"] = self.event.pty_close.dic()
                
                case ES_EVENT_TYPE_AUTH_PROC_CHECK :
                    dic["proc_check"] = self.event.proc_check.dic()
                
                case ES_EVENT_TYPE_NOTIFY_PROC_CHECK :
                    dic["proc_check"] = self.event.proc_check.dic()
                
                case ES_EVENT_TYPE_AUTH_GET_TASK :
                    dic["get_task"] = self.event.get_task.dic()
                
                case ES_EVENT_TYPE_AUTH_SEARCHFS :
                    dic["searchfs"] = self.event.searchfs.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SEARCHFS :
                    dic["searchfs"] = self.event.searchfs.dic()
                
                case ES_EVENT_TYPE_AUTH_FCNTL :
                    dic["fcntl"] = self.event.fcntl.dic()
                
                case ES_EVENT_TYPE_AUTH_IOKIT_OPEN :
                    dic["iokit_open"] = self.event.iokit_open.dic()
                
                case ES_EVENT_TYPE_AUTH_PROC_SUSPEND_RESUME :
                    dic["proc_suspend_resume"] = self.event.proc_suspend_resume.dic()
                
                case ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME :
                    dic["proc_suspend_resume"] = self.event.proc_suspend_resume.dic()
                
                case ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED :
                    dic["cs_invalidated"] = self.event.cs_invalidated.dic()
                
                case ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME :
                    dic["get_task_name"] = self.event.get_task_name.dic()
                
                case ES_EVENT_TYPE_NOTIFY_TRACE :
                    dic["trace"] = self.event.trace.dic()
                
                case ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE :
                    dic["remote_thread_create"] = self.event.remote_thread_create.dic()
                
                case ES_EVENT_TYPE_AUTH_REMOUNT :
                    dic["remount"] = self.event.remount.dic()
                
                case ES_EVENT_TYPE_NOTIFY_REMOUNT :
                    dic["remount"] = self.event.remount.dic()
                
                case ES_EVENT_TYPE_AUTH_GET_TASK_READ :
                    dic["get_task_read"] = self.event.get_task_read.dic()
                
                case ES_EVENT_TYPE_NOTIFY_GET_TASK_READ :
                    dic["get_task_read"] = self.event.get_task_read.dic()
                
                case ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT :
                    dic["get_task_inspect"] = self.event.get_task_inspect.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SETUID :
                    dic["setuid"] = self.event.setuid.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SETGID :
                    dic["setgid"] = self.event.setgid.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SETEUID :
                    dic["seteuid"] = self.event.seteuid.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SETEGID :
                    dic["setegid"] = self.event.setegid.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SETREUID :
                    dic["setreuid"] = self.event.setreuid.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SETREGID :
                    dic["setregid"] = self.event.setregid.dic()
                
                case ES_EVENT_TYPE_AUTH_COPYFILE :
                    dic["copyfile"] = self.event.copyfile.dic()
                
                case ES_EVENT_TYPE_NOTIFY_COPYFILE :
                    dic["copyfile"] = self.event.copyfile.dic()
                
                case ES_EVENT_TYPE_NOTIFY_AUTHENTICATION :
                    dic["authentication"] = self.event.authentication.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED :
                    dic["xp_malware_detected"] = self.event.xp_malware_detected.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED :
                    dic["xp_malware_remediated"] = self.event.xp_malware_remediated.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN :
                    dic["lw_session_login"] = self.event.lw_session_login.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT :
                    dic["lw_session_logout"] = self.event.lw_session_logout.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK :
                    dic["lw_session_lock"] = self.event.lw_session_lock.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK :
                    dic["lw_session_unlock"] = self.event.lw_session_unlock.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH :
                    dic["screensharing_attach"] = self.event.screensharing_attach.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH :
                    dic["screensharing_detach"] = self.event.screensharing_detach.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN :
                    dic["openssh_login"] = self.event.openssh_login.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT :
                    dic["openssh_logout"] = self.event.openssh_logout.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN :
                    dic["login_login"] = self.event.login_login.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT :
                    dic["login_logout"] = self.event.login_logout.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD :
                    dic["btm_launch_item_add"] = self.event.btm_launch_item_add.pointee.dic()
                
                case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE :
                    dic["btm_launch_item_remove"] = self.event.btm_launch_item_remove.pointee.dic()
                
                default:
                    break;
            }

            if let thread = self.thread {
               dic["thread"] = thread.pointee.dic()
            }
            dic["global_seq_num"] = self.global_seq_num
        return dic
    }
}
