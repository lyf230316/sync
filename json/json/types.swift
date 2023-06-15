//
//  types.swift
//  json
//
//  Created by lyf on 2023/6/13.
//

import Foundation

extension String {
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
        return value.prefix(1).lowercased()+value.dropFirst()
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
}

struct Member {
    var name: String
    var type: String
}

struct Struct {
    var isUnoin: Bool = false
    var name: String
    var members: [Member] = []
    
    
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
    
    func printCwrite() {
        if self.isUnoin {
            return
        }
        let on = name.originName()
        print("size_t \(name)_write(\(name) *\(on), void*p) {")
        print("    size_t size = 0;\n")
        var index = 0
        while index < members.count {
            let member = members[index]
            if member.name == "reserved" {
                continue
            }
            var mt = member.type
            var pointer = false
            if member.type.localizedStandardContains(" * ") {
                mt = String(member.type.split(separator: " ").first!)
                pointer = true
            }
            if let tp = typesDic[mt] {
                switch tp {
                case .es_enum(let e) :
                    print("    *((\(member.type)*)(p+size)) = \(on)->\(member.name);")
                    print("    size += sizeof(\(member.type));\n")
                    if let dic = enumDic[e.name] {
                        
                    }
                    break
                case .es_struct(let s):
                    if pointer {
                        print("    size += \(s.name)_write(\(on)->\(member.name),p+size);\n")
                    }else{
                        print("    size += \(s.name)_write(&\(on)->\(member.name),p+size);\n")
                    }
                    break
                case .typedef(let t):
                    break
                }
            }else{
                if let (t,s) = member.type.arraySizeForType() {
                    print("    memcpy(p+size, \(on)->\(member.name), sizeof(\(t)) * \(s));")
                    print("    size += sizeof(\(t)) * \(s);\n")
                } else {
                    print("    *((\(member.type)*)(p+size)) = \(on)->\(member.name);")
                    print("    size += sizeof(\(member.type));\n")
                }
            }
        }
        print("    return size;")
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

var enumDic:[String:[String:String]] = [
    "es_event_type_t": [
        "unoinName": "event",
        "type": "es_events_t",
    ],
]

