//
//  ocsize.swift
//  json
//
//  Created by lyf on 2023/8/23.
//

import Foundation

extension Struct {
    func ocSize() {
        if self.isUnoin {
            return
        }
        if self.name.contains("__") {
            return
        }
        let on = name.originName()
        print("size_t \(name)_size(\(name) *\(on)) {")
        print("    size_t size = 0;")
        var index = 0
        while index < members.count {
            let member = members[index]
            ocSize(member,"\(on)->", "\t")
            index += 1
        }
        print("    return size;")
        print("}\n")
    }
    
    func ocSize(_ mem: Member,_ ctx: String,_ indentation: String = "\t") {
        if mem.name.hasPrefix("reserved") || mem.name == "opaque" {
            return
        }
        let pointer = mem.isPointer()
        let otype = mem.orginType()
        let st = mem.isStructType()
        
        if pointer {
            if st {
                if self.name == "es_muted_paths_t" && mem.name == "paths" {
                    self.ocSizeOfArray(mem, ctx, count: "count")
                } else if self.name == "es_muted_processes_t" && mem.name == "processes" {
                    self.ocSizeOfArray(mem, ctx, count: "count")
                }
                else {
                    print("\(indentation)size += \(otype)_size(\(ctx)\(mem.name));")
                }
            } else {
                if self.name == "es_token_t" && mem.name == "data" {
                    self.ocSizeOfArray(mem, ctx, count: "size")
                } else if self.name == "es_string_token_t" && mem.name == "data" {
                    self.ocSizeOfArray(mem, ctx, count: "length")
                } else if self.name == "es_muted_path_t" && mem.name == "events" {
                    self.ocSizeOfArray(mem, ctx, count: "event_count")
                } else if self.name == "es_muted_process_t" && mem.name == "events" {
                    self.ocSizeOfArray(mem, ctx, count: "event_count")
                }
                else if otype == "void" {
                    return
                } else if otype == "struct statfs" {
                    print("\(indentation)size += sizeof(\(otype));")
                }
                else {
                    print(otype)
                }
            }
        } else {
            if st {
                if otype.contains("__"),
                   case .es_struct(let it) = typesDic[otype]! {
                    for memb in it.members {
                        it.ocSize(memb, "\(ctx)\(mem.name).", indentation)
                    }
                } else {
                    print("\(indentation)size += \(otype)_size(&(\(ctx)\(mem.name)));")
                }
            } else {
                if self.name == "es_message_t" && mem.name == "event" {
                    self.ocSizeOfEnumType(mem, ctx, indentation, enu: "event_type",prefixes: ["ES_EVENT_TYPE_AUTH_","ES_EVENT_TYPE_NOTIFY_"])
                } else if self.name == "es_message_t" && mem.name == "action" {
                    self.ocSizeOfEnumType(mem, ctx, indentation, enu: "action_type",prefixes: ["ES_ACTION_TYPE_"])
                } else if self.name == "es_event_rename_t" && mem.name == "destination" {
                    self.ocSizeOfEnumType(mem, ctx, indentation, enu: "destination_type",prefixes: ["ES_DESTINATION_TYPE_"])
                } else if self.name == "es_event_authentication_t" && mem.name == "data" {
                    self.ocSizeOfEnumType(mem, ctx, indentation, enu: "authentication_type",prefixes: ["ES_AUTHENTICATION_TYPE_"])
                } else if self.name == "es_result_t" && mem.name == "result" {
                    self.ocSizeOfEnumType(mem, ctx, indentation, enu: "result_type",prefixes: ["ES_RESULT_TYPE_"])
                }
                else if otype.contains("__"),
                        case .es_struct(let it) = typesDic[otype]! {
                    for memb in it.members {
                        it.ocSize(memb, "\(ctx)\(mem.name).", indentation)
                    }
                } else if let (itemT, count) = mem.arrayInfo() {
                    if count > 0 {
                        print("\(indentation)size += sizeof(\(itemT)) * \(count);")
                    }
                }
                else {
                    print("\(indentation)size += sizeof(\(otype));")
                }
            }
        }
    }
    
    func ocSizeOfArray(_ mem: Member,_ ctx: String,_ indentation: String = "\t", count: String) {
        let otype = mem.orginType()
        let st = mem.isStructType()
        
        if st {
            print("\(indentation)if (\(ctx)\(mem.name)) {")
            print("\(indentation)    size += sizeof(_Bool);")
            print("\(indentation)    for (int i = 0; i < \(ctx)\(count); i++) {")
            print("\(indentation)        size += \(otype)_size((\(otype)*)&(\(ctx)\(mem.name)[i]));")
            print("\(indentation)    }")
            print("\(indentation)} else {")
            print("\(indentation)    size += sizeof(_Bool);")
            print("\(indentation)}")
        } else {
            print("\(indentation)if (\(ctx)\(mem.name)) {")
            print("\(indentation)    size += sizeof(_Bool);")
            print("\(indentation)    size += \(ctx)\(count) * sizeof(\(mem.orginType()));")
            print("\(indentation)} else {")
            print("\(indentation)    size += sizeof(_Bool);")
            print("\(indentation)}")
        }
    }
    
    func ocSizeOfEnumType(_ mem: Member,_ ctx: String,_ indentation: String = "\t", enu: String, prefixes: [String]) {
        guard let enumem = findMember(enu) else {
            return
        }
        guard case .es_enum(let e) = typesDic[enumem.type] else {
            return
        }
        guard case .es_struct(let st) = typesDic[mem.type] else {
            return
        }
        print("\(indentation)switch (\(ctx)\(enumem.name)) {")
        for ev in e.values {
            let evname = ev.removePrefix(prefixes).lowercased()
            if let mb = st.findMember(evname) {
                print("\(indentation)\tcase \(ev) :{")
                ocSize(mb, "\(ctx)\(mem.name).",indentation+"\t\t")
                print("\(indentation)\t}break;")
            }
        }
        print("\(indentation)\tdefault:")
        print("\(indentation)\t\tbreak;")
        print("\(indentation)}\n")
    }
}
