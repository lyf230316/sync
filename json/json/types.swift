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

struct Member {
    var name: String
    var type: String
}

struct Struct {
    var isUnoin: Bool = false
    var name: String
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
            if member.name == "reserved" || member.name == "opaque" {
                index+=1
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
                        let unoinName = dic["unoinName"] as! String
                        let unoinType = dic["type"] as! String
                        let prefixs = dic["prefix"] as! [String]
                        if case .es_struct(let st) = typesDic[unoinType] {
                            print("\tswitch (\(on)->\(member.name)) {")
                            for ev in e.values {
                                let evname = ev.removePrefix(prefixs).lowercased()
                                if let mb = st.findMember(evname) {
                                    print("\t\tcase \(ev):")
                                    if mb.type.localizedStandardContains("*") {
                                        print("\t\t\tsize += \(mb.type.removeSuffix([" * _Nonnull"]))_write(\(on)->\(unoinName).\(mb.name), p+size);")
                                    } else {
                                        print("\t\t\tsize += \(mb.type)_write(&(\(on)->\(unoinName).\(mb.name)), p+size);")
                                    }
                                    print("\t\t\tbreak;")
                                } else {
//                                    print("not found \(ev)")
                                }
                            }
                            print("        default:")
                            print("            break;")
                            print("    }\n")
                        }
                    } else {
//                        print(e.name)
                    }
                    break
                case .es_struct(let s):
                    if !s.isUnoin ||
                        (s.isUnoin && s.name == "es_event_setacl_t__acl") ||
                        (s.isUnoin && s.name == "es_event_authentication_touchid_t__uid") ||
                        (s.isUnoin && s.name == "es_event_openssh_login_t__uid") ||
                        (s.isUnoin && s.name == "es_event_login_login_t__uid"){
                        if member.type.contains("__"),
                           case .es_struct(let ms) = typesDic[member.type] {
                            for sm in ms.members {
                                print("    *((\(sm.type)*)(p+size)) = \(on)->\(member.name).\(sm.name);")
                                print("    size += sizeof(\(sm.type));\n")
                            }
                        }else{
                            var src = ""
                            if pointer {
                                src = "\(on)->\(member.name)"
                            }else{
                                src = "&(\(on)->\(member.name))"
                            }
                            print("    size += \(s.name)_write(\(src),p+size);\n")
                        }
                    } else {
                        var has = false
                        for (_,dic) in enumDic {
                            if let tp = dic["type"] as? String, tp == s.name {
                                has = true
                                break
                            }
                        }
                        if !has {
//                            print("unoinType:",s.name)
                        }
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
                    if member.type == "const char *" {
                        print("    memcpy(p+size, \(on)->\(member.name), \(on)->length);")
                        print("    size += \(on)->length;\n")
                    }else{
                        print("    *((\(member.type)*)(p+size)) = \(on)->\(member.name);")
                        print("    size += sizeof(\(member.type));\n")
                    }
                }
            }
            index += 1
        }
        print("    return size;")
        print("}\n")
    }
    
    func cwrite(_ type: String,_ name: String,_ contex: String,_ pointer: Bool = false,_ useFunc: Bool = false) {
        if useFunc {
            print("\t\t\tsize += \(type)_write(.\(name), p+size);")
        }
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

