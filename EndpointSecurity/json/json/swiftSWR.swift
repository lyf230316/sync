//
//  swiftSWR.swift
//  json
//
//  Created by msi on 2023/7/13.
//

import Foundation

extension Struct {
    func swiftWrite() {
        if self.isUnoin {
            return
        }
        if self.name.contains("__") {
            return
        }
        let on = name.originName()
        print("size_t \(name)_write(\(name) *\(on), void *p) {")
        print("    size_t size = 0;\n")
        var index = 0
        while index < members.count {
            let member = members[index]
            swiftWrite(member.type, member.name,"\(on)->", "\t")
            index += 1
        }
        print("")
        print("    return size;")
        print("}\n")
    }
    
    func swiftWrite(_ type: String,_ name: String,_ ctx: String,_ indentation: String = "\t") {
        if name.hasPrefix("reserved") || name == "opaque" {
            return
        }
        var type = type
        var pointer = false
        var nullable = false
        if type.contains(" * ") {
            type = String(type.split(separator: " * ").first!)
            pointer = true
        }
        if let tem = typesDic[type] {
            switch tem {
            case .es_enum(let e):
                print("\(indentation)*((\(type)*)(p+size)) = \(ctx)\(name);")
                print("\(indentation)size += sizeof(\(type));\n")
                if let dic = enumDic[e.name] {
                    let unoinName = dic["unoinName"] as! String
                    let unoinType = dic["type"] as! String
                    let prefixs = dic["prefix"] as! [String]
                    if case .es_struct(let st) = typesDic[unoinType] {
                        print("\(indentation)switch (\(ctx)\(name)) {")
                        for ev in e.values {
                            let evname = ev.removePrefix(prefixs).lowercased()
                            if let mb = st.findMember(evname) {
                                print("\(indentation)\tcase \(ev) : {")
                                swiftWrite(mb.type, mb.name,"\(ctx)\(unoinName).",indentation+"\t\t")
                                print("\(indentation)\t}break;")
                            } else {
//                                    print("not found \(ev)")
                            }
                        }
                        print("\(indentation)\tdefault:")
                        print("\(indentation)\t\tbreak;")
                        print("\(indentation)}\n")
                    }
                } else {
//                        print(e.name)
                }
            case .es_struct(let s):
                if s.isUnoin {
                    
                } else {
                    if s.name.contains("__") { // 匿名结构体
                        for mb in s.members {
                            swiftWrite(mb.type, mb.name,"\(ctx)\(name).", indentation+"\t")
                        }
                    } else {
                        if pointer {
                            print("\(indentation)if (\(ctx)\(name)) {")
                            print("\(indentation)\t*((_Bool*)(p+size)) = true;")
                            print("\(indentation)\tsize += sizeof(_Bool);")
                            print("\(indentation)\tsize += \(s.name)_write(\(ctx)\(name),p+size);")
                            print("\(indentation)} else {")
                            print("\(indentation)\t*((_Bool*)(p+size)) = false;")
                            print("\(indentation)\tsize += sizeof(_Bool);")
                            print("\(indentation)}")
                        }else{
                            print("\(indentation)size += \(s.name)_write(&(\(ctx)\(name)),p+size);")
                        }
                    }
                }
            case .typedef(let _):
                break
            }
        } else {
            if let (t,s) = type.arraySizeForType() {
                print("\(indentation)memcpy(p+size, \(ctx)\(name), sizeof(\(t)) * \(s));")
                print("\(indentation)size += sizeof(\(t)) * \(s);")
            } else {
                if type == "const char *" {
                    print("\(indentation)memcpy(p+size, string_token->data, string_token->length);")
                    print("\(indentation)size += string_token->length;")
                } else if type == "struct statfs" {
                    print("\(indentation)*((\(type)*)(p+size)) = *\(ctx)\(name);")
                    print("\(indentation)size += sizeof(\(type));")
                }
                else{
                    print("\(indentation)*((\(type)*)(p+size)) = \(ctx)\(name);")
                    print("\(indentation)size += sizeof(\(type));")
                }
            }
        }
    }
}

//MARK: size

extension Struct {
    func swiftSize() {
        if self.isUnoin {
            return
        }
        if self.name.contains("__") {
            return
        }
        let on = name.originName()
        print("public func \(name)_size(_ message: UnsafeMutablePointer<\(name)>) -> Int {")
        print("    var size = 0\n")
        var index = 0
        while index < members.count {
            let member = members[index]
            swiftSize(member.type, member.name,"\(on)->", "\t")
            index += 1
        }
        print("    return size")
        print("}\n")
    }
    
    func swiftSize(_ type: String,_ name: String,_ ctx: String,_ indentation: String = "\t") {
        if name.hasPrefix("reserved") || name == "opaque" {
            return
        }
        var type = type
        var pointer = false
        if type.contains(" * ") {
            type = String(type.split(separator: " * ").first!)
            pointer = true
        }
        if let tem = typesDic[type] {
            switch tem {
            case .es_enum(let e):
//                print("\(indentation)*((\(type)*)(p+size)) = \(ctx)\(name);")
                print("\(indentation)size += sizeof(\(type));\n")
                if let dic = enumDic[e.name] {
                    let unoinName = dic["unoinName"] as! String
                    let unoinType = dic["type"] as! String
                    let prefixs = dic["prefix"] as! [String]
                    if case .es_struct(let st) = typesDic[unoinType] {
                        print("\(indentation)switch (\(ctx)\(name)) {")
                        for ev in e.values {
                            let evname = ev.removePrefix(prefixs).lowercased()
                            if let mb = st.findMember(evname) {
                                print("\(indentation)\tcase \(ev) :{")
                                swiftSize(mb.type, mb.name,"\(ctx)\(unoinName).",indentation+"\t\t")
                                print("\(indentation)\t}break;")
                            } else {
//                                    print("not found \(ev)")
                            }
                        }
                        print("\(indentation)\tdefault:")
                        print("\(indentation)\t\tbreak;")
                        print("\(indentation)}\n")
                    }
                } else {
//                        print(e.name)
                }
            case .es_struct(let s):
                if s.isUnoin {
                    
                } else {
                    if s.name.contains("__") { // 匿名结构体
                        for mb in s.members {
                            swiftSize(mb.type, mb.name,"\(ctx)\(name).", indentation+"\t")
                        }
                    } else {
                        if pointer {
                            print("\(indentation)if (\(ctx)\(name)) {")
                            print("\(indentation)\tsize += sizeof(_Bool);")
                            print("\(indentation)\tsize += \(s.name)_size(\(ctx)\(name));")
                            print("\(indentation)} else {")
                            print("\(indentation)\tsize += sizeof(_Bool);")
                            print("\(indentation)}")
                        }else{
                            print("\(indentation)size += \(s.name)_size(&(\(ctx)\(name)));")
                        }
                    }
                }
            case .typedef( _):
                break
            }
        } else {
            if let (t,s) = type.arraySizeForType() {
//                print("\(indentation)memcpy(p+size, \(ctx)\(name), sizeof(\(t)) * \(s));")
                print("\(indentation)size += sizeof(\(t)) * \(s);")
            } else {
                if type == "const char *" {
//                    print("\(indentation)memcpy(p+size, string_token->data, string_token->length);")
                    print("\(indentation)size += string_token->length;")
                } else if type == "struct statfs" {
//                    print("\(indentation)*((\(type)*)(p+size)) = *\(ctx)\(name);")
                    print("\(indentation)size += sizeof(\(type));")
                }
                else{
//                    print("\(indentation)*((\(type)*)(p+size)) = \(ctx)\(name);")
                    print("\(indentation)size += sizeof(\(type));")
                }
            }
        }
    }
}

extension Struct {
    func swiftRead() {
        if self.isUnoin {
            return
        }
        if self.name.contains("__") {
            return
        }
        let on = name.originName()
        print("size_t \(self.name)_read(\(self.name) *\(on), void *p) {")
        print("    size_t size = 0;\n")
        var index = 0
        while index < members.count {
            let member = members[index]
            swiftRead(member.type, member.name,"\(on)->", "\t")
            index += 1
        }
        print("")
        print("    return size;")
        print("}\n")
    }
    
    func swiftRead(_ type: String,_ name: String,_ ctx: String,_ indentation: String = "\t") {
        if name.hasPrefix("reserved") || name == "opaque" {
            return
        }
        var type = type
        var pointer = false
        if type.contains(" * ") {
            type = String(type.split(separator: " * ").first!)
            pointer = true
        }
        if let tem = typesDic[type] {
            switch tem {
            case .es_enum(let e):
                print("\(indentation)\(ctx)\(name) = *((\(type)*)(p+size));")
                print("\(indentation)size += sizeof(\(type));\n")
                if let dic = enumDic[e.name] {
                    let unoinName = dic["unoinName"] as! String
                    let unoinType = dic["type"] as! String
                    let prefixs = dic["prefix"] as! [String]
                    if case .es_struct(let st) = typesDic[unoinType] {
                        print("\(indentation)switch (\(ctx)\(name)) {")
                        for ev in e.values {
                            let evname = ev.removePrefix(prefixs).lowercased()
                            if let mb = st.findMember(evname) {
                                print("\(indentation)\tcase \(ev) :{")
                                swiftRead(mb.type, mb.name,"\(ctx)\(unoinName).",indentation+"\t\t")
                                print("\(indentation)\t}break;")
                            } else {
//                                    print("not found \(ev)")
                            }
                        }
                        print("\(indentation)\tdefault:")
                        print("\(indentation)\t\tbreak;")
                        print("\(indentation)}\n")
                    }
                } else {
//                        print(e.name)
                }
            case .es_struct(let s):
                if s.isUnoin {
                    
                } else {
                    if s.name.contains("__") { // 匿名结构体
                        for mb in s.members {
                            swiftRead(mb.type, mb.name,"\(ctx)\(name).", indentation+"\t")
                        }
                    } else {
                        if pointer {
                            //read bool
                            print("\(indentation)_Bool \(name)_has = *((_Bool*)(p+size));")
                            print("\(indentation)size += sizeof(_Bool);")
                            print("\(indentation)if (\(name)_has) {")
                            print("\(indentation)\t\(ctx)\(name) = malloc(sizeof(\(s.name)));")
                            print("\(indentation)\tsize += \(s.name)_read(\(ctx)\(name),p+size);")
                            print("\(indentation)}")
                        } else {
                            print("\(indentation)size += \(s.name)_read(&(\(ctx)\(name)),p+size);")
                        }
                    }
                }
            case .typedef( _):
                break
            }
        } else {
            if let (t,s) = type.arraySizeForType() {
                print("\(indentation)memcpy(\(ctx)\(name), p+size, sizeof(\(t)) * \(s));")
                print("\(indentation)size += sizeof(\(t)) * \(s);")
            } else {
                if type == "const char *" {
                    print("\(indentation)memcpy((void*)(string_token->data), p+size, string_token->length);")
                    print("\(indentation)size += string_token->length;")
                } else if type == "struct statfs" {
                    print("\(indentation)*\(ctx)\(name) = *((\(type)*)(p+size));")
                    print("\(indentation)size += sizeof(\(type));")
                }
                else{
                    print("\(indentation)\(ctx)\(name) = *((\(type)*)(p+size));")
                    print("\(indentation)size += sizeof(\(type));")
                }
            }
        }
    }
}
