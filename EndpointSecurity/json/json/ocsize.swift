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
    case toDic
    case OCObject_H
    case CStruct
    case CStructConvert_H
    case CStructConvert // es to ces
}

extension Struct {
    static var debug: Bool = false
    static var funType: FunT = .size
    
    static var fileContent: String = ""
    
    static func addLine(_ line: String) {
        Self.fileContent.append(line)
        Self.fileContent.append("\n")
    }
}

let funcPrefix = "swr_"

extension Struct {
    func ocSize() {
        if self.isUnoin {
            return
        }
        if self.name.contains("__") {
            return
        }
        let on = name.originName()
        let indentation = structStart()
        var index = 0
        while index < members.count {
            let member = members[index]
            ocSize(member,"\(on)->", indentation)
            index += 1
        }
        structEnd()
    }
    
    func ocSize(_ mem: Member,_ ctx: String,_ indentation: String = "\t", ext: String = "") {
        if mem.name.hasPrefix("reserved") || mem.name == "opaque" {
            return
        }
        let pointer = mem.isPointer()
        let otype = mem.orginType()
        let st = mem.isStructType()
        
        if pointer {
            if st {
                if self.name == "es_muted_paths_t" && mem.name == "paths" {
                    self.ocSizeOfArray(mem, ctx, indentation, count: "count")
                } else if self.name == "es_muted_processes_t" && mem.name == "processes" {
                    self.ocSizeOfArray(mem, ctx, count: "count")
                }
                else {
                    onCustomStructPointer(mem, ctx, indentation, ext: ext)
                }
            } else {
                if self.name == "es_token_t" && mem.name == "data" {
                    self.ocSizeOfArray(mem, ctx, indentation, count: "size")
                } else if self.name == "es_string_token_t" && mem.name == "data" {
                    self.ocSizeOfArray(mem, ctx, indentation, count: "length")
                } else if self.name == "es_muted_path_t" && mem.name == "events" {
                    self.ocSizeOfArray(mem, ctx, indentation, count: "event_count")
                } else if self.name == "es_muted_process_t" && mem.name == "events" {
                    self.ocSizeOfArray(mem, ctx, indentation, count: "event_count")
                }
                else {
                    onCustomPointer(mem, ctx, indentation)
                }
            }
        } else {
            if st {
                if otype.contains("__"),
                   case .es_struct(let it) = typesDic[otype]! {
                    self.parent = self
                    for memb in it.members {
                        it.ocSize(memb, "\(ctx)\(mem.name).", indentation, ext: "\(ext).\(mem.name)")
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
        case .OCObject_H:
            break
        case .CStruct:
            Self.addLine("\(indentation)void * _Nonnull \(mem.name);")
            break
        case .CStructConvert_H:
            break
        case .CStructConvert:
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
    
    func structStart() -> String {
        if Self.debug {
            Self.addLine("//\(#function)")
        }
        var res = "\t"
        switch Self.funType {
        case .size:
            Self.addLine("size_t \(funcPrefix)\(name)_size(\(name) *\(name.originName())) {")
            Self.addLine("    size_t size = 0;")
        case .write:
            Self.addLine("size_t \(funcPrefix)\(name)_write(\(name) *\(name.originName()), void *p) {")
            Self.addLine("    size_t size = 0;")
        case .read:
            Self.addLine("size_t \(funcPrefix)\(name)_read(\(name) *\(name.originName()), void *p) {")
            Self.addLine("    size_t size = 0;")
        case .headerfile:
            Self.addLine("size_t \(funcPrefix)\(name)_size(\(name) *\(name.originName()));")
            Self.addLine("size_t \(funcPrefix)\(name)_write(\(name) *\(name.originName()), void *p);")
            Self.addLine("size_t \(funcPrefix)\(name)_read(\(name) *\(name.originName()), void *p);")
        case .toDic:
            Self.addLine("extension \(name.originName()) {")
            Self.addLine("    func dic() -> [String: Any] {")
            Self.addLine("        var res: [String: Any] = [:]")
            res = "\t\t"
        case .OCObject_H:
            Self.addLine("@interface ES\(name.originName().camelCaseFromSnakeCase()) : NSObject")
            res = ""
        case .CStruct:
            Self.addLine("typedef struct ces_\(name.originName()) {")
        case .CStructConvert_H:
            Self.addLine("ces_\(name.originName()) \(name)_convert(\(name) * _Nonnull \(name.originName()));")
        case .CStructConvert:
            Self.addLine("ces_\(name.originName()) \(name)_convert(\(name) * _Nonnull \(name.originName())) {")
            Self.addLine("    ces_\(name.originName()) _\(name.originName()) = {0};")
        }
        return res
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
        case .toDic:
            Self.addLine("        return dic")
            Self.addLine("    }")
            Self.addLine("}\n")
        case .OCObject_H:
            Self.addLine("@end\n")
        case .CStruct:
            Self.addLine("}ces_\(name.originName());\n")
        case .CStructConvert_H:
            Self.addLine("")
        case .CStructConvert:
            Self.addLine("    return _\(name.originName());")
            Self.addLine("}\n")
        }
    }
    
    func onCustomStructPointer(_ mem: Member,_ ctx: String,_ indentation: String = "\t", ext: String = "") {
        if Self.debug {
            Self.addLine("\(indentation)//\(#function):\(mem.type)  \(mem.name)")
        }
        
        let otype = mem.orginType()
        switch Self.funType {
        case .size:
            if mem.isNullable() { //有可能是null的指针
                Self.addLine("\(indentation)size += sizeof(_Bool);")
                Self.addLine("\(indentation)if (\(ctx)\(mem.name)) {")
                Self.addLine("\(indentation)    size += \(funcPrefix)\(otype)_size(\(ctx)\(mem.name));")
                Self.addLine("\(indentation)}")
            } else {
                Self.addLine("\(indentation)size += \(funcPrefix)\(otype)_size(\(ctx)\(mem.name));")
            }
        case .write:
            if mem.isNullable() {
                Self.addLine("\(indentation)if (\(ctx)\(mem.name)) {")
                Self.addLine("\(indentation)    *(_Bool *)(p+size) = true;")
                Self.addLine("\(indentation)    size += sizeof(_Bool);")
                Self.addLine("\(indentation)    size += \(funcPrefix)\(otype)_write(\(ctx)\(mem.name), p+size);")
                Self.addLine("\(indentation)} else {")
                Self.addLine("\(indentation)    *(_Bool *)(p+size) = false;")
                Self.addLine("\(indentation)    size += sizeof(_Bool);")
                Self.addLine("\(indentation)}")
            } else {
                Self.addLine("\(indentation)size += \(funcPrefix)\(otype)_write(\(ctx)\(mem.name), p+size);")
            }
        case .read:
            if mem.isNullable() {
                Self.addLine("\(indentation)_Bool \(mem.name)_has = *(_Bool *)(p+size);")
                Self.addLine("\(indentation)size += sizeof(_Bool);")
                Self.addLine("\(indentation)if (\(mem.name)_has) {")
                Self.addLine("\(indentation)    \(ctx)\(mem.name) = malloc(sizeof(\(otype)));")
                Self.addLine("\(indentation)    size += \(funcPrefix)\(otype)_read(\(ctx)\(mem.name), p+size);")
                Self.addLine("\(indentation)}")
            } else {
                Self.addLine("\(indentation)\(ctx)\(mem.name) = malloc(sizeof(\(otype)));")
                Self.addLine("\(indentation)size += \(funcPrefix)\(otype)_read(\(ctx)\(mem.name), p+size);")
            }
        case .headerfile:
            break
        case .toDic:
            Self.addLine("\(indentation)res[\(mem.name)] = self.\(mem.name).pointee.dic()")
        case .OCObject_H:
            Self.addLine("\(indentation)@property(nonatomic, strong)ES\(otype.originName().camelCaseFromSnakeCase())* \(mem.name);")
        case .CStruct:
            Self.addLine("\(indentation)ces_\(otype.originName()) \(mem.name);")
        case .CStructConvert_H:
            break
        case .CStructConvert:
            if ext.isEmpty {
                Self.addLine("\(indentation)_\(name.originName()).\(mem.name) = \(otype)_convert(\(ctx)\(mem.name));")
            } else {
                Self.addLine("\(indentation)\(ext)\(mem.name) = \(otype)_convert(\(ctx)\(mem.name));")
            }
        }
    }
    
    func onCustomStruct(_ mem: Member,_ ctx: String,_ indentation: String = "\t") {
        if Self.debug {
            Self.addLine("\(indentation)//\(#function)")
        }
        
        let otype = mem.orginType()
        switch Self.funType {
        case .size:
            Self.addLine("\(indentation)size += \(funcPrefix)\(otype)_size(&(\(ctx)\(mem.name)));")
        case .write:
            Self.addLine("\(indentation)size += \(funcPrefix)\(otype)_write(&(\(ctx)\(mem.name)), p+size);")
        case .read:
            Self.addLine("\(indentation)size += \(funcPrefix)\(otype)_read(&(\(ctx)\(mem.name)), p+size);")
        case .headerfile:
            break
        case .toDic:
            Self.addLine("\(indentation)res[\(mem.name)] = self.\(mem.name).dic()")
        case .OCObject_H:
            Self.addLine("\(indentation)@property(nonatomic, strong)ES\(otype.originName().camelCaseFromSnakeCase())* \(mem.name);")
        case .CStruct:
            Self.addLine("\(indentation)ces_\(otype.originName()) \(mem.name);")
        case .CStructConvert_H:
            break
        case .CStructConvert:
            Self.addLine("\(indentation)_\(name.originName()).\(mem.name) = \(otype)_convert(&(\(ctx)\(mem.name)));")
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
        case .toDic:
            if otype == "void" {
                return
            } else if otype == "struct statfs" {
                Self.addLine("\(indentation)res[\(mem.name)] = self.\(mem.name).dic()")
            }
            else {
                print(otype)
            }
        case .OCObject_H:
            if otype == "void" {
                return
            } else if otype == "struct statfs" {
                Self.addLine("\(indentation)@property(nonatomic, assign)\(otype) \(mem.name);")
            }
            else {
                print(otype)
            }
        case .CStruct:
            if otype == "void" {
                return
            } else if otype == "struct statfs" {
                Self.addLine("\(indentation)\(otype) \(mem.name);")
            }
            else {
                print(otype)
            }
        case .CStructConvert_H:
            break
        case .CStructConvert:
            if otype == "void" {
                return
            } else if otype == "struct statfs" {
                Self.addLine("\(indentation)_\(name.originName()).\(mem.name) = *\(ctx)\(mem.name);")
            }
            else {
                print(otype)
            }
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
                if (otype == "uuid_t") {
                    Self.addLine("\(indentation)memcpy(p+size,\(ctx)\(mem.name),16);")
                    Self.addLine("\(indentation)size += 16;")
                } else {
                    Self.addLine("\(indentation)*(\(otype)*)(p+size) = \(ctx)\(mem.name);")
                    Self.addLine("\(indentation)size += sizeof(\(otype));")
                }
            }
        case .read:
            if let (itemT, count) = mem.arrayInfo() {
                if count > 0 {
                    Self.addLine("\(indentation)memcpy(\(ctx)\(mem.name), p+size, sizeof(\(itemT)) * \(count));")
                    Self.addLine("\(indentation)size += sizeof(\(itemT)) * \(count);")
                }
            }
            else {
                if (otype == "uuid_t") {
                    Self.addLine("\(indentation)memcpy(\(ctx)\(mem.name), p+size, 16);")
                    Self.addLine("\(indentation)size += 16;")
                } else {
                    Self.addLine("\(indentation)\(ctx)\(mem.name) = *(\(otype)*)(p+size);")
                    Self.addLine("\(indentation)size += sizeof(\(otype));")
                }
            }
        case .headerfile:
            break
        case .toDic:
            if let (itemT, count) = mem.arrayInfo() {
                if count > 0 {
                    Self.addLine("\(indentation)res[\(mem.name)] = self.\(mem.name)")
                }
            }
            else {
                Self.addLine("\(indentation)res[\(mem.name)] = self.\(mem.name)")
            }
        case .OCObject_H:
            if let (itemT, count) = mem.arrayInfo() {
                if count > 0 {
                    Self.addLine("\(indentation)@property(nonatomic, assign)NSArray* \(mem.name); //\(otype)")
                }
            }
            else {
                Self.addLine("\(indentation)@property(nonatomic, assign)\(otype) \(mem.name); //\(otype)")
            }
        case .CStruct:
            if let (itemT, count) = mem.arrayInfo() {
                if count > 0 {
                    Self.addLine("\(indentation)\(itemT) \(mem.name)[\(count)];")
                }
            }
            else {
                Self.addLine("\(indentation)\(otype) \(mem.name);")
            }
        case .CStructConvert_H:
            break
        case .CStructConvert:
            if let (itemT, count) = mem.arrayInfo() {
                if count > 0 {
                    Self.addLine("\(indentation)memcpy(_\(name.originName()).\(mem.name),\(ctx)\(mem.name),sizeof(\(itemT)) * \(count));")
                }
            }
            else {
                Self.addLine("\(indentation)_\(name.originName()).\(mem.name) = \(ctx)\(mem.name);")
            }
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
                Self.addLine("\(indentation)        size += \(funcPrefix)\(otype)_size((\(otype)*)&(\(ctx)\(mem.name)[i]));")
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
                Self.addLine("\(indentation)        size += \(funcPrefix)\(otype)_write((\(otype)*)&(\(ctx)\(mem.name)[i]), p+size);")
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
                Self.addLine("\(indentation)        size += \(funcPrefix)\(otype)_read((\(otype)*)&(\(ctx)\(mem.name)[i]), p+size);")
                Self.addLine("\(indentation)    }")
                Self.addLine("\(indentation)}")
            } else {
                Self.addLine("\(indentation)_Bool \(mem.name)_has = *(_Bool *)(p+size);")
                Self.addLine("\(indentation)if (\(mem.name)_has) {")
                Self.addLine("\(indentation)    \(ctx)\(mem.name) = malloc(\(ctx)\(count) * sizeof(\(mem.orginType())));")
                Self.addLine("\(indentation)    memcpy((void*)\(ctx)\(mem.name),p+size,sizeof(\(mem.orginType())) * \(ctx)\(count));")
                Self.addLine("\(indentation)    size += \(ctx)\(count) * sizeof(\(mem.orginType()));")
                Self.addLine("\(indentation)}")
            }
        case .headerfile:
            break
        case .toDic:
            if st {
                Self.addLine("\(indentation)if (\(ctx)\(mem.name)) {")
                Self.addLine("\(indentation)    var arr: [\(otype)] = []")
                Self.addLine("\(indentation)    for var i in 0 ..< self.\(count) {")
                Self.addLine("\(indentation)        arr.append(self.\(mem.name)[i].dic()")
                Self.addLine("\(indentation)    }")
                Self.addLine("\(indentation)    res[\(mem.name)] = arr")
                Self.addLine("\(indentation)}")
            } else {
                Self.addLine("\(indentation)if (\(ctx)\(mem.name)) {")
                Self.addLine("\(indentation)    var arr: [\(otype)] = []")
                Self.addLine("\(indentation)    for var i in 0 ..< self.\(count) {")
                Self.addLine("\(indentation)        arr.append(self.\(mem.name)[i]")
                Self.addLine("\(indentation)    }")
                Self.addLine("\(indentation)    res[\(mem.name)] = arr")
                Self.addLine("\(indentation)}")
            }
        case .CStructConvert_H:
            break
        case .OCObject_H:
            Self.addLine("//\(otype) \(mem.name)")
            if st {
                Self.addLine("\(indentation)@property(nonatomic, strong)NSArray* \(mem.name);")
            } else {
                if otype == "char" ||
                    otype == "uint8_t" {
                    Self.addLine("\(indentation)@property(nonatomic, strong)NSData* \(mem.name);")
                }
                else {
                    Self.addLine("\(indentation)@property(nonatomic, strong)NSArray* \(mem.name);")
                }
            }
        case .CStruct:
            if st {
                Self.addLine("\(indentation)\(otype)* _Nonnull \(mem.name);")
            } else {
                Self.addLine("\(indentation)\(otype)* _Nonnull \(mem.name);")
            }
        case .CStructConvert:
            if st {
                Self.addLine("\(indentation)_\(name.originName()).\(mem.name) = \(ctx)\(mem.name);")
            }
        }
    }
}
