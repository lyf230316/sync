//
//  File.swift
//  
//
//  Created by msi on 2023/6/11.
//

import Foundation
import EndpointSecurity

class Es {
    var client: OpaquePointer!
    var msgBlock: ((OpaquePointer, UnsafePointer<es_message_t>) -> Void)? = nil
    
    init?() {
        let res = es_new_client(&client) { client, msg_p in
            self.handleMsg(client, msg_p)
        }
        if res != ES_NEW_CLIENT_RESULT_SUCCESS {
            print(#file,#function,#line,res)
            return nil
        }
    }
    
    func handleMsg(_ client: OpaquePointer,_ message: UnsafePointer<es_message_t>) {
        if let blk = msgBlock {
            blk(client, message)
        }
    }
    
    deinit {
        if let es_client = client {
            es_delete_client(es_client)
        }
    }
}

extension Es {
    public struct MutedProcess {
        public var auditToken: audit_token_t
        public var events: [es_event_type_t] = []
        
        init(_ ptr: UnsafePointer<es_muted_process_t>) {
            auditToken = ptr.pointee.audit_token
            for i in 0 ..< ptr.pointee.event_count {
                events.append(ptr.pointee.events.advanced(by: i).pointee)
            }
        }
    }
    
    public struct MutedPath {
        public var type: es_mute_path_type_t
        public var events: [es_event_type_t] = []
        public var path: String
        
        init(_ ptr: UnsafePointer<es_muted_path_t>) {
            type = ptr.pointee.type
            for i in 0 ..< ptr.pointee.event_count {
                events.append(ptr.pointee.events.advanced(by: i).pointee)
            }
            path = String(bytesNoCopy: UnsafeMutableRawPointer(mutating: ptr.pointee.path.data), length: ptr.pointee.path.length, encoding: .utf8, freeWhenDone: false)!
        }
    }
}

extension Es {
    func subscribe(_ types:[es_event_type_t]) -> es_return_t {
        return es_subscribe(client, types, UInt32(types.count))
    }
    
    func unsubscribe(_ types:[es_event_type_t]) -> es_return_t {
        return es_unsubscribe(client, types, UInt32(types.count))
    }
    
    func unsubscribeAll() -> es_return_t {
        return es_unsubscribe_all(client)
    }
    
    func subscriptions(subscriptions:inout [es_event_type_t]) -> es_return_t {
        subscriptions.removeAll()
        var count: Int = Int(ES_EVENT_TYPE_LAST.rawValue)
        var tp = ES_EVENT_TYPE_LAST
        var rp = withUnsafeMutablePointer(to: &tp, {$0})
        let res = es_subscriptions(client, &count, &rp)
        guard res == ES_RETURN_SUCCESS else {
            return res
        }
        for i in 0 ..< count {
            subscriptions.append(rp.advanced(by: i).pointee)
        }
        free(rp)
        return res
    }
    
    func muteProcess(_ audit_token: audit_token_t) -> es_return_t {
        return es_mute_process(client, withUnsafePointer(to: audit_token, {$0}))
    }
    
    func unmuteProcess(_ audit_token: audit_token_t) -> es_return_t {
        return es_unmute_process(client, withUnsafePointer(to: audit_token, {$0}))
    }
    
    @available(macOS 12.0, *)
    func muteProcessEvents(_ audit_token: audit_token_t, _ events: [es_event_type_t]) -> es_return_t {
        return es_mute_process_events(client, withUnsafePointer(to: audit_token, {$0}), events, events.count)
    }
    
    @available(macOS 12.0, *)
    func unmuteProcessEvents(_ audit_token: audit_token_t, _ events: [es_event_type_t]) -> es_return_t {
        return es_unmute_process_events(client, withUnsafePointer(to: audit_token, {$0}), events, events.count)
    }
    
    @available(macOS, introduced: 10.15, deprecated: 12.0, message: "Please use es_muted_processes_events.")
    func mutedProcesses(_ count:inout Int, _ audit_tokens:inout [audit_token_t]) -> es_return_t {
        count = 0
        audit_tokens.removeAll()
        var lc:Int = 0
        var at = audit_token_t()
        var atp = withUnsafeMutablePointer(to: &at, {$0})
        let res = es_muted_processes(client, &lc, &atp)
        guard res == ES_RETURN_SUCCESS else {
            return res
        }
        count = lc
        for i in 0 ..< count {
            audit_tokens.append(atp.advanced(by: i).pointee)
        }
        free(atp)
        return res
    }
    
    @available(macOS 12.0, *)
    func mutedProcessesEvents(_ muted_processes:inout [MutedProcess]) -> es_return_t {
        var p: UnsafeMutablePointer<es_muted_processes_t>? = nil
        let res = es_muted_processes_events(client, &p)
        guard res == ES_RETURN_SUCCESS, let p = p else {
            return res
        }
        for i in 0 ..< p.pointee.count {
            muted_processes.append(MutedProcess(p.pointee.processes.advanced(by: i)))
        }
        es_release_muted_processes(p)
        return res
    }
    
    @available(macOS 12.0, *)
    func mutePath(_ path: String, _ type: es_mute_path_type_t) -> es_return_t {
        return es_mute_path(client, path.cString(using: .utf8)!, type)
    }
    
    @available(macOS 12.0, *)
    func mutePathEvents(_ path: String, _ type: es_mute_path_type_t, _ events: [es_event_type_t]) -> es_return_t {
        return es_mute_path_events(client, path.cString(using: .utf8)!, type, events, events.count)
    }
    
    @available(macOS, introduced: 10.15, deprecated: 12.0, message: "Please use es_mute_path or es_mute_path_events.")
    public func mutePathPrefix(_ path_prefix: String) -> es_return_t {
        return es_mute_path_prefix(client, path_prefix.cString(using: .utf8)!)
    }
    
    @available(macOS, introduced: 10.15, deprecated: 12.0, message: "Please use es_mute_path or es_mute_path_events.")
    public func mutePathLiteral(_ path_literal: String) -> es_return_t {
        return es_mute_path_literal(client, path_literal.cString(using: .utf8)!)
    }
    
    @available(macOS 10.15, *)
    public func unmuteAllPaths() -> es_return_t {
        return es_unmute_all_paths(client)
    }
    
    @available(macOS 13.0, *)
    public func unmuteAllTargetPaths() -> es_return_t {
        es_unmute_all_target_paths(client)
    }
    
    @available(macOS 12.0, *)
    public func unmutePath(_ path: String, _ type: es_mute_path_type_t) -> es_return_t {
        es_unmute_path(client, path.cString(using: .utf8)!, type)
    }
    
    @available(macOS 12.0, *)
    public func unmutePathEvents(_ path: String, _ type: es_mute_path_type_t, _ events: [es_event_type_t]) -> es_return_t {
        es_unmute_path_events(client, path.cString(using: .utf8)!, type, events, events.count)
    }
    
    @available(macOS 12.0, *)
    public func mutedPathsEvents(_ muted_paths:inout [MutedPath]) -> es_return_t {
        muted_paths.removeAll()
        var mps = es_muted_paths_t()
        var p = withUnsafeMutablePointer(to: &mps, {$0})
        let res = es_muted_paths_events(client, &p)
        guard res == ES_RETURN_SUCCESS else {
            return res
        }
        for i in 0 ..< p.pointee.count {
            muted_paths.append(MutedPath(p.pointee.paths.advanced(by: i)))
        }
        es_release_muted_paths(p)
        return res
    }
    
    @available(macOS 13.0, *)
    public func invertMuting(_ mute_type: es_mute_inversion_type_t) -> es_return_t {
        es_invert_muting(client, mute_type)
    }
    
    @available(macOS 13.0, *)
    public func mutingInverted(_ mute_type: es_mute_inversion_type_t) -> es_mute_inverted_return_t {
        es_muting_inverted(client, mute_type)
    }
    
}
