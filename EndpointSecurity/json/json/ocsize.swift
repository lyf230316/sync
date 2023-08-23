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
        print("    size_t size = 0;\n")
        var index = 0
        while index < members.count {
            let member = members[index]
            ocSize(member,"\(on)->", "\t")
            index += 1
        }
        print("")
        print("    return size;")
        print("}\n")
    }
    
    func ocSize(_ mem: Member,_ ctx: String,_ indentation: String = "\t") {
        if name.hasPrefix("reserved") || name == "opaque" {
            return
        }
        if let tem = typesDic[mem.type] {
            switch tem {
            case .es_enum(let e):
                print("\(indentation)\(ctx)\(name) = *((\(mem.orginType())*)(p+size));")
                print("\(indentation)size += sizeof(\(mem.orginType()));\n")
            case .es_struct(let s):
                if s.isUnoin {
                    
                } else {
                    if s.name.contains("__") { // 匿名结构体
                        for mb in s.members {
                            CRead(mb.type, mb.name,"\(ctx)\(name).", indentation+"\t")
                        }
                    } else {
                        if mem.isPointer() {
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
        }
    }
}
