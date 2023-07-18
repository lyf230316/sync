//
//  main.swift
//  json
//
//  Created by lyf on 2023/4/19.
//

import Foundation
import SQLite3



func enumToModel(name: String, def: [String: Any], lev: Int = 0) -> Enum {
    var res = Enum(name: name)
    var inners = def["inner"]! as! [[String:Any]]
    var i = 0
    while i < inners.count {
        let inner = inners[i]
        let kind = inner["kind"] as! String
        if kind == "EnumConstantDecl" {
            if let name = inner["name"] as? String {
                res.values.append(name)
            }
        }
        i += 1
    }
    typesDic[name] = .es_enum(res)
    return res
}

func structToModel(tname: String,def:[String: Any]) -> [Struct]? {
    guard let tag = def["tagUsed"] as? String else {
        return nil
    }
    var result: [Struct] = []
    var mainStruct = Struct(name: tname)
    if tag == "union" {
        mainStruct.isUnoin = true
    }
    var inners = def["inner"]! as! [[String:Any]]
    var i = 0
    while i < inners.count {
        let inner = inners[i]
        let kind = inner["kind"] as! String
        if kind == "FieldDecl" {
            if let name = inner["name"] as? String {
                var type = ""
                if let t = inner["type"] as? String {
                    type = t
                } else if let d = inner["type"] as? [String: String] {
                    type = d["qualType"] ?? ""
                }
                let m = Member(name: name, type: type)
                mainStruct.members.append(m)
            }
        } else if kind == "RecordDecl" {
            var lname = tname
            if i+1 < inners.count {
                i += 1
                let inner = inners[i]
                if let name = inner["name"] as? String {
                    lname = lname+"__"+name
                    let m = Member(name: name, type: lname)
                    mainStruct.members.append(m)
                }
            }
            if lname != tname {
                if let subStructs = structToModel(tname: lname, def: inner) {
                    result.append(contentsOf: subStructs)
                }
            }
        }
        i += 1
    }
    result.append(mainStruct)
    typesDic[mainStruct.name] = .es_struct(mainStruct)
    return result
}

func astAnalys2model() {
//    let file = "/Users/lyf/git/github/sync/EndpointSecurity/json/json/EndpointSecurity.json"
    let file = "/Users/msi/git/github/sync/EndpointSecurity/json/json/EndpointSecurity.json"
    let data = try! Data(contentsOf: URL(filePath: file))
    let dic = try! JSONSerialization.jsonObject(with: data) as! [String: Any]
    
    var es_struct_names: [String] = []
    var es_structs: [String:[String: Any]] = [:]
    var es_union_names: [String] = []
    var es_unions: [String: [String: Any]] = [:]
    
    if let inners = dic["inner"] as? [[String: Any]] {
        var i = 0;
        while i < inners.count {
            let inner = inners[i]
            let kind = inner["kind"] as! String
            if kind == "RecordDecl" {
                if let name = inner["name"] {
                } else {
                    i += 1
                    let strt = inner
                    let inner = inners[i]
                    if let name = inner["name"] as? String {
                        if name.hasPrefix("es_") || true {
                            es_struct_names.append(name)
                            es_structs[name] = strt
//                            print(kind,":",name)
                        }
                    }
                }
            } else if kind == "TypedefDecl" {
                
            } else if kind == "FunctionDecl" {
                
            } else if kind == "EnumDecl" {
                if let name = inner["name"] as? String {
                    if name.hasPrefix("es_") || true {
                        es_union_names.append(name)
                        es_unions[name] = inner
                    }
                } else {
                    i += 1
                    let strt = inner
                    let inner = inners[i]
                    if let name = inner["name"] as? String {
                        if name.hasPrefix("es_") || true {
                            es_union_names.append(name)
                            es_unions[name] = strt
//                            print(kind,":",name)
                        }
                    }
                }
            }
            else {
                print(kind)
            }
            //last
            i += 1
        }
    }
    //处理每个类型中的指针
    var enumModels: [Enum] = []
    var stctModels: [Struct] = []
    for n in es_union_names {
        let def = es_unions[n]!
        enumModels.append(enumToModel(name: n, def: def))
    }
    for n in es_struct_names {
        let def = es_structs[n]!
        if let sts = structToModel(tname: n, def: def) {
            stctModels.append(contentsOf: sts)
        }
    }
    
//    print(enumModels)
//    print(stctModels)
//    
//    for e in enumModels {
//        e.printCEnum()
//    }
    
//    for sm in stctModels {
//        sm.printCwrite()
//    }
    
    for sm in stctModels {
//        sm.CSize()
//        sm.printCwrite()
//        sm.CRead()
//        sm.ToDic()
        sm.swiftSize()
    }
}

astAnalys2model()
