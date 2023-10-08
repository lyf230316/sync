//
//  types.swift
//  json
//
//  Created by lyf on 2023/6/13.
//

import Foundation

public extension String {
    static let typeDic = [
        "uint32_t": "UInt32",
        "uint64_t": "UInt64",
        "struct timespec": "Double",
        "uint64_t[]": "Data",
    ]
    
    func camelCaseFromSnakeCase() -> String {
        let value = self.lowercased()
                        .split(separator: "_")
                        .drop { $0.isEmpty }
                        .map { $0.prefix(1).uppercased()+$0.dropFirst() }
                        .joined()
        return value
    }
    
    func convertType() -> String {
        if let v = String.typeDic[self] {
            return v
        }
        if self.localizedStandardContains(" * ") {
            return "UInt64"
        }
        return self
    }
    
    func originName() -> String {
        var value = self
        if value.hasPrefix("es_") {
            value = value.split(separator: "_")
                .dropFirst()
                .joined(separator: "_")
        }
        if value.hasSuffix("_t") {
            value = value.split(separator: "_")
                .dropLast()
                .joined(separator: "_")
        }
        return value
    }
    
    func arraySizeForType() -> (String,Int)? {
        let arr = self.split(separator: "[")
        guard var l = arr.last else {
            return nil
        }
        guard l.removeLast() == "]" else {
            return nil
        }
        guard let size = Int(l), size > 0 else {
            return nil
        }
        let t = arr.first!
        return (String(t),size)
    }
    
    func removePrefix(_ pfs:[String]) -> String {
        for pf in pfs {
            if self.hasPrefix(pf) {
                var res = self
                res.removeFirst(pf.count)
                return res
            }
        }
        return self
    }
    
    func removeSuffix(_ sfs: [String]) -> String {
        for sf in sfs {
            if self.hasSuffix(sf) {
                var res = self
                res.removeLast(sf.count)
                return res
            }
        }
        return self
    }
}

class Member {
    var name: String = ""
    var type: String = ""
    
    init(name: String, type: String) {
        self.name = name
        self.type = type
    }
    
    func isPointer() -> Bool {
        type.contains("*")
    }
    
    func arrayInfo() -> (String, Int)? {
        let arr = type.split(separator: "[")
        guard var l = arr.last else {
            return nil
        }
        guard l.removeLast() == "]" else {
            return nil
        }
        let t = arr.first!
        if l.count == 0 {
            return (String(t), 0)
        }
        guard let size = Int(l), size >= 0 else {
            return nil
        }
        return (String(t),size)
    }
    
    func orginType() -> String {
        var res = type
        if let ot = type.split(separator: " *").first {
            if ot.hasPrefix("const ") {
                res = String(ot).removePrefix(["const "])
            } else {
                res = String(ot)
            }
        }
        return res
    }
    
    func isStructType() -> Bool {
        if let tem = typesDic[self.orginType()],
           case .es_struct(let s) = tem {
            if !s.isUnoin {
                return true
            }
        }
        return false
    }
}

class Struct {
    var parent: Struct? = nil
    var isUnoin: Bool = false
    var name: String = ""
    var members: [Member] = []
    
    func findMember(_ name: String) -> Member? {
        for member in members {
            if member.name == name {
                return member
            }
        }
        return nil
    }
    
    func printTable() {
        let clsName = name.camelCaseFromSnakeCase()
        print("class \(clsName) {")
        print("\tstatic let tableName = Table(\"\(clsName)\")\n")
        for member in members {
            print("\tstatic let \(member.name) = Expression<\(member.type)>(\"\(member.name)\")")
        }
        print("}\n")
    }
    
    func printCStruct() {
        let clsName = name.camelCaseFromSnakeCase()
        var tag = "struct"
        if self.isUnoin {
            tag = "unoin"
        }
        print("\(tag) \(clsName) {")
        for member in members {
            if member.name == "reserved" {
                continue
            }
            print("\t\(member.type.camelCaseFromSnakeCase()) \(member.name)")
        }
        print("}\n")
    }
}

struct Enum {
    var name: String
    var values: [String] = []
    
    func printCEnum() {
        let clsName = name
        print("enum \(clsName) {")
        for v in values {
            print("\t\(v)")
        }
        print("}\n")
    }
}

struct Typedef {
    var name: String
    var qualType: String
}

enum ESType {
    case es_enum(Enum)
    case typedef(Typedef)
    case es_struct(Struct)
}

var typesDic: [String: ESType] = [:]

var enumDic:[String:[String:Any]] = [
    "es_event_type_t": [
        "prefix":["ES_EVENT_TYPE_AUTH_","ES_EVENT_TYPE_NOTIFY_"],
        "unoinName": "event",
        "type": "es_events_t",
        "parentType": ["es_message_t"]
    ],
    "es_action_type_t": [
        "prefix":["ES_ACTION_TYPE_"],
        "unoinName": "action",
        "type": "es_message_t__action",
    ],
    "es_destination_type_t": [
        "prefix":["ES_DESTINATION_TYPE_"],
        "unoinName": "destination",
        "type": "es_event_rename_t__destination",
    ],
    "es_authentication_type_t": [
        "prefix":["ES_AUTHENTICATION_TYPE_"],
        "unoinName": "data",
        "type": "es_event_authentication_t__data",
    ],
    "es_result_type_t": [
        "prefix":["ES_RESULT_TYPE_"],
        "unoinName": "result",
        "type": "es_result_t__result",
    ],
]


