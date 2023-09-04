//
//  ocsize.swift
//  json
//
//  Created by lyf on 2023/8/23.
//

import Foundation

enum FunT {
    case size
    case write
    case read
    case headerfile
}

extension Struct {
    static var debug: Bool = true
    static var funType: FunT = .size
    
    static var fileContent: String = ""
    
    static func addLine(_ line: String) {
        Self.fileContent.append(line)
        Self.fileContent.append("\n")
    }
}

extension Struct {
    func ocSize() {
        if self.isUnoin {
            return
        }
        if self.name.contains("__") {
            return
        }
        let on = name.originName()
        structStart()
        var index = 0
        while index < members.count {
            let member = members[index]
            ocSize(member,"\(on)->", "\t")
            index += 1
        }
        structEnd()
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
                    onCustomStructPointer(mem, ctx, indentation)
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
                else {
                    onCustomPointer(mem, ctx, indentation)
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
                    onCustomStruct(mem, ctx, indentation)
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
                } else {
                    onCustom(mem, ctx, indentation)
                }
            }
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
        switch Self.funType {
        case .headerfile:
            break
        default:
            Self.addLine("\(indentation)switch (\(ctx)\(enumem.name)) {")
            for ev in e.values {
                let evname = ev.removePrefix(prefixes).lowercased()
                if let mb = st.findMember(evname) {
                    Self.addLine("\(indentation)\tcase \(ev) :{")
                    ocSize(mb, "\(ctx)\(mem.name).",indentation+"\t\t")
                    Self.addLine("\(indentation)\t}break;")
                }
            }
            Self.addLine("\(indentation)\tdefault:")
            Self.addLine("\(indentation)\t\tbreak;")
            Self.addLine("\(indentation)}\n")
        }
    }
    
    // 差异输出
    
    func structStart() {
        if Self.debug {
            Self.addLine("//\(#function)")
        }
        
        switch Self.funType {
        case .size:
            Self.addLine("size_t \(name)_size(\(name) *\(name.originName())) {")
            Self.addLine("    size_t size = 0;")
        case .write:
            Self.addLine("size_t \(name)_write(\(name) *\(name.originName()), void *p) {")
            Self.addLine("    size_t size = 0;")
        case .read:
            Self.addLine("size_t \(name)_read(\(name) *\(name.originName()), void *p) {")
            Self.addLine("    size_t size = 0;")
        case .headerfile:
            Self.addLine("size_t \(name)_size(\(name) *\(name.originName()));")
            Self.addLine("size_t \(name)_write(\(name) *\(name.originName()), void *p);")
            Self.addLine("size_t \(name)_read(\(name) *\(name.originName()), void *p);")
        }
    }
    
    func structEnd() {
        if Self.debug {
            Self.addLine("//\(#function)")
        }
        
        switch Self.funType {
        case .size:
            Self.addLine("    return size;")
            Self.addLine("}\n")
        case .write:
            Self.addLine("    return size;")
            Self.addLine("}\n")
        case .read:
            Self.addLine("    return size;")
            Self.addLine("}\n")
        case .headerfile:
            Self.addLine("")
        }
    }
    
    func onCustomStructPointer(_ mem: Member,_ ctx: String,_ indentation: String = "\t") {
        if Self.debug {
            Self.addLine("\(indentation)//\(#function)")
        }
        
        let otype = mem.orginType()
        switch Self.funType {
        case .size:
            Self.addLine("\(indentation)size += \(otype)_size(\(ctx)\(mem.name));")
        case .write:
            Self.addLine("\(indentation)size += \(otype)_write(\(ctx)\(mem.name), p+size);")
        case .read:
            Self.addLine("\(indentation)\(ctx)\(mem.name) = malloc(sizeof(\(otype)));")
            Self.addLine("\(indentation)size += \(otype)_read(\(ctx)\(mem.name), p+size);")
        case .headerfile:
            break
        }
        
    }
    
    func onCustomStruct(_ mem: Member,_ ctx: String,_ indentation: String = "\t") {
        if Self.debug {
            Self.addLine("\(indentation)//\(#function)")
        }
        
        let otype = mem.orginType()
        switch Self.funType {
        case .size:
            Self.addLine("\(indentation)size += \(otype)_size(&(\(ctx)\(mem.name)));")
        case .write:
            Self.addLine("\(indentation)size += \(otype)_write(&(\(ctx)\(mem.name)), p+size);")
        case .read:
            Self.addLine("\(indentation)size += \(otype)_read(&(\(ctx)\(mem.name)), p+size);")
        case .headerfile:
            break
        }
    }
    
    func onCustomPointer(_ mem: Member,_ ctx: String,_ indentation: String = "\t") {
        if Self.debug {
            Self.addLine("\(indentation)//\(#function)")
        }
        
        let otype = mem.orginType()
        switch Self.funType {
        case .size:
            if otype == "void" {
                return
            } else if otype == "struct statfs" {
                Self.addLine("\(indentation)size += sizeof(\(otype));")
            }
            else {
                print(otype)
            }
        case .write:
            if otype == "void" {
                return
            } else if otype == "struct statfs" {
                Self.addLine("\(indentation)memcpy(p+size,\(ctx)\(mem.name),sizeof(\(otype)));")
                Self.addLine("\(indentation)size += sizeof(\(otype));")
            }
            else {
                print(otype)
            }
        case .read:
            if otype == "void" {
                return
            } else if otype == "struct statfs" {
                Self.addLine("\(indentation)memcpy(\(ctx)\(mem.name), p+size, sizeof(\(otype)));")
                Self.addLine("\(indentation)size += sizeof(\(otype));")
            }
            else {
                print(otype)
            }
        case .headerfile:
            break
        }
    }
    
    func onCustom(_ mem: Member,_ ctx: String,_ indentation: String = "\t") {
        if Self.debug {
            Self.addLine("\(indentation)//\(#function)")
        }
        
        let otype = mem.orginType()
        switch Self.funType {
        case .size:
            if let (itemT, count) = mem.arrayInfo() {
                if count > 0 {
                    Self.addLine("\(indentation)size += sizeof(\(itemT)) * \(count);")
                }
            }
            else {
                Self.addLine("\(indentation)size += sizeof(\(otype));")
            }
        case .write:
            if let (itemT, count) = mem.arrayInfo() {
                if count > 0 {
                    Self.addLine("\(indentation)memcpy(p+size,\(ctx)\(mem.name),sizeof(\(itemT)) * \(count));")
                    Self.addLine("\(indentation)size += sizeof(\(itemT)) * \(count);")
                }
            }
            else {
                Self.addLine("\(indentation)*(\(otype)*)(p+size) = \(ctx)\(mem.name);")
                Self.addLine("\(indentation)size += sizeof(\(otype));")
            }
        case .read:
            if let (itemT, count) = mem.arrayInfo() {
                if count > 0 {
                    Self.addLine("\(indentation)memcpy(\(ctx)\(mem.name), p+size, sizeof(\(itemT)) * \(count));")
                    Self.addLine("\(indentation)size += sizeof(\(itemT)) * \(count);")
                }
            }
            else {
                Self.addLine("\(indentation)\(ctx)\(mem.name) = *(\(otype)*)(p+size);")
                Self.addLine("\(indentation)size += sizeof(\(otype));")
            }
        case .headerfile:
            break
        }
    }
    
    func ocSizeOfArray(_ mem: Member,_ ctx: String,_ indentation: String = "\t", count: String) {
        if Self.debug {
            Self.addLine("\(indentation)//\(#function)")
        }

        let otype = mem.orginType()
        let st = mem.isStructType()
        
        switch Self.funType {
        case .size:
            if st {
                Self.addLine("\(indentation)if (\(ctx)\(mem.name)) {")
                Self.addLine("\(indentation)    size += sizeof(_Bool);")
                Self.addLine("\(indentation)    for (int i = 0; i < \(ctx)\(count); i++) {")
                Self.addLine("\(indentation)        size += \(otype)_size((\(otype)*)&(\(ctx)\(mem.name)[i]));")
                Self.addLine("\(indentation)    }")
                Self.addLine("\(indentation)} else {")
                Self.addLine("\(indentation)    size += sizeof(_Bool);")
                Self.addLine("\(indentation)}")
            } else {
                Self.addLine("\(indentation)if (\(ctx)\(mem.name)) {")
                Self.addLine("\(indentation)    size += sizeof(_Bool);")
                Self.addLine("\(indentation)    size += \(ctx)\(count) * sizeof(\(mem.orginType()));")
                Self.addLine("\(indentation)} else {")
                Self.addLine("\(indentation)    size += sizeof(_Bool);")
                Self.addLine("\(indentation)}")
            }
        case .write:
            if st {
                Self.addLine("\(indentation)if (\(ctx)\(mem.name)) {")
                Self.addLine("\(indentation)    *(_Bool *)(p+size) = true;")
                Self.addLine("\(indentation)    size += sizeof(_Bool);")
                Self.addLine("\(indentation)    for (int i = 0; i < \(ctx)\(count); i++) {")
                Self.addLine("\(indentation)        size += \(otype)_write((\(otype)*)&(\(ctx)\(mem.name)[i]), p+size);")
                Self.addLine("\(indentation)    }")
                Self.addLine("\(indentation)} else {")
                Self.addLine("\(indentation)    *(_Bool *)(p+size) = false;")
                Self.addLine("\(indentation)    size += sizeof(_Bool);")
                Self.addLine("\(indentation)}")
            } else {
                Self.addLine("\(indentation)if (\(ctx)\(mem.name)) {")
                Self.addLine("\(indentation)    *(_Bool *)(p+size) = true;")
                Self.addLine("\(indentation)    size += sizeof(_Bool);")
                Self.addLine("\(indentation)    memcpy(p+size,\(ctx)\(mem.name),\(ctx)\(count) * sizeof(\(mem.orginType())));")
                Self.addLine("\(indentation)    size += \(ctx)\(count) * sizeof(\(mem.orginType()));")
                Self.addLine("\(indentation)} else {")
                Self.addLine("\(indentation)    *(_Bool *)(p+size) = false;")
                Self.addLine("\(indentation)    size += sizeof(_Bool);")
                Self.addLine("\(indentation)}")
            }
        case .read:
            if st {
                Self.addLine("\(indentation)_Bool \(mem.name)_has = *(_Bool *)(p+size);")
                Self.addLine("\(indentation)size += sizeof(_Bool);")
                Self.addLine("\(indentation)if (\(mem.name)_has) {")
                Self.addLine("\(indentation)    \(ctx)\(mem.name) = malloc(sizeof(\(otype)*) * \(ctx)\(count));")
                Self.addLine("\(indentation)    for (int i = 0; i < \(ctx)\(count); i++) {")
                Self.addLine("\(indentation)        size += \(otype)_read((\(otype)*)&(\(ctx)\(mem.name)[i]), p+size);")
                Self.addLine("\(indentation)    }")
                Self.addLine("\(indentation)}")
            } else {
                Self.addLine("\(indentation)_Bool \(mem.name)_has = *(_Bool *)(p+size);")
                Self.addLine("\(indentation)if (\(mem.name)_has) {")
                Self.addLine("\(indentation)    \(ctx)\(mem.name) = malloc(\(ctx)\(count) * sizeof(\(mem.orginType())));")
                Self.addLine("\(indentation)    memcpy(\(ctx)\(mem.name),p+size,sizeof(\(mem.orginType())) * \(ctx)\(count));")
                Self.addLine("\(indentation)    size += \(ctx)\(count) * sizeof(\(mem.orginType()));")
                Self.addLine("\(indentation)}")
            }
        case .headerfile:
            break
        }
    }
}
