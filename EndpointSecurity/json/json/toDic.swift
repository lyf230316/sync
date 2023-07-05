//
//  toDic.swift
//  json
//
//  Created by msi on 2023/7/5.
//

import Foundation

extension Struct {
//extension es_message_t {
//    func dic() -> [String: Any] {
//        var dic: [String: Any] = [:]
//        return dic
//    }
//}
    func ToDic() {
        if self.isUnoin {
            return
        }
        if self.name.contains("__") {
            return
        }
        if self.name == "es_string_token_t" {
            return
        }
        let on = name.originName()
        print("extension \(name) {")
        print("    func dic() -> [String: Any] {")
        print("        var dic: [String: Any] = [:]")
        var index = 0
        while index < members.count {
            let member = members[index]
            ToDic(member.type, member.name,"self.", "\t\t\t")
            index += 1
        }
        print("        return dic")
        print("    }")
        print("}\n")
    }
    
    func ToDic(_ type: String,_ name: String,_ ctx: String,_ indentation: String = "\t") {
        if name.hasPrefix("reserved") || name == "opaque" {
            return
        }
        var type = type
        var pointer = false
        var nullable = false
        if type.contains(" * ") {
            if type.hasSuffix("_Nonnull") {
                nullable = false
            } else if type.hasSuffix("_Nullable") {
                nullable = true
            } else {
                
            }
            type = String(type.split(separator: " * ").first!)
            pointer = true
        }
        if let tem = typesDic[type] {
            switch tem {
            case .es_enum(let e):
                print("\(indentation)dic[\"\(name)\"] = \(ctx)\(name)")
                if let dic = enumDic[e.name] {
                    let unoinName = dic["unoinName"] as! String
                    let unoinType = dic["type"] as! String
                    let prefixs = dic["prefix"] as! [String]
                    if case .es_struct(let st) = typesDic[unoinType] {
                        print("\(indentation)switch \(ctx)\(name) {")
                        for ev in e.values {
                            let evname = ev.removePrefix(prefixs).lowercased()
                            if let mb = st.findMember(evname) {
                                print("\(indentation)\tcase \(ev) : ")
                                ToDic(mb.type, mb.name,"\(ctx)\(unoinName).",indentation+"\t\t")
                                print("\(indentation)\t")
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
                            ToDic(mb.type, mb.name,"\(ctx)\(name).", indentation+"\t")
                        }
                    } else if s.name == "es_string_token_t" {
                        print("\(indentation)dic[\"\(name)\"] = NSString(bytes: \(ctx)\(name).data, length: \(ctx)\(name).length, encoding: NSUTF8StringEncoding)! as String")
                    }
                    else {
                        if pointer {
                            if nullable {
                                print("\(indentation)if let \(name) = \(ctx)\(name) {")
                                print("\(indentation)   dic[\"\(name)\"] = \(name).pointee.dic()")
                                print("\(indentation)}")
                            } else {
                                print("\(indentation)dic[\"\(name)\"] = \(ctx)\(name).pointee.dic()")
                            }
                        }else{
                            print("\(indentation)dic[\"\(name)\"] = \(ctx)\(name).dic()")
                        }
                    }
                }
            case .typedef(let _):
                break
            }
        } else {
            if let (t,s) = type.arraySizeForType() {
                print("\(indentation)dic[\"\(name)\"] = \(ctx)\(name)")
            } else {
                if type == "const char *" {
                    print("\(indentation)memcpy(p+size, string_token->data, string_token->length);")
                    print("\(indentation)size += string_token->length;")
                } else if type == "struct statfs" {
                    print("\(indentation)dic[\"\(name)\"] = \(ctx)\(name)")
                }
                else{
                    print("\(indentation)dic[\"\(name)\"] = \(ctx)\(name)")
                }
            }
        }
    }
}
