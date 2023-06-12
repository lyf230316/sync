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
    class Message {
        static let tableName = Table("Message")
        
        static let id = Expression<Int64>("id")
        static let version = Expression<UInt32>("version")
        static let time = Expression<Double>("time")
        static let mach_time = Expression<UInt64>("mach_time")
        static let deadline = Expression<UInt64>("deadline")
        static let seq_num = Expression<UInt64>("seq_num")
        static let action_type = Expression<UInt32>("action_type")
        static let global_seq_num = Expression<UInt64>("global_seq_num")
        static let thread_id = Expression<UInt64>("thread_id")
        
        

//        public var action: es_message_t.__Unnamed_union_action
//        public var event: es_events_t
    }
}

extension Db {
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
        

        public var codesigning_flags: UInt32

        public var is_platform_binary: Bool

        public var is_es_client: Bool

        public var cdhash: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

        public var signing_id: es_string_token_t

        public var team_id: es_string_token_t

        public var executable: UnsafeMutablePointer<es_file_t>

        public var tty: UnsafeMutablePointer<es_file_t>? /* field available only if message version >= 2 */

        public var start_time: timeval /* field available only if message version >= 3 */

        public var responsible_audit_token: audit_token_t /* field available only if message version >= 4 */

        public var parent_audit_token: audit_token_t
    }
}

