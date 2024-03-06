//
//  main.swift
//  esjson
//
//  Created by lyf on 2023/11/1.
//

import Foundation

var astDic: [String: AstBase] = [:]

func astAnalys() {
//    let jsonFile = "/Users/lyf/git/github/sync/EndpointSecurity/clang/EndpointSecurity.json"
//    let jsonFile = "/Users/msi/git/github/lyf230316/sync/EndpointSecurity/clang/EndpointSecurity.json"
    let jsonFile = "/Users/lyf/git/github/sync/EndpointSecurity/clang/EndpointSecurity.json"
    let data = try! Data(contentsOf: URL(filePath: jsonFile))
    let dic = try! JSONSerialization.jsonObject(with: data) as! [String: Any]

    guard let inners = dic["inner"] as? [[String: Any]] else {
        return
    }
    
    var i = 0
    while i < inners.count {
        let inner = inners[i];
        let kind = inner["kind"] as! String
        switch kind {
        case "TypedefDecl":
            let td = TypeDef(inner)
            astDic[td.id] = td
        case "RecordDecl":
            let rd = Record(inner)
            astDic[rd.id] = rd
        case "FunctionDecl":
            let f = Function(inner)
            astDic[f.id] = f
        case "EnumDecl":
            let ed = Enum(inner)
            astDic[ed.id] = ed
        case "VarDecl":
            let vd = Var(inner)
            astDic[vd.id] = vd
        case "EmptyDecl":
            break
        default:
            print("keys:\(inner.keys)")
            print("\(kind) kind 没有处理")
            return
        }
        i += 1
    }
    
    for (k,v) in astDic {
        if let v = v as? TypeDef {
            let dic = v.ast;
            if let inners = dic["inner"] as? [[String: Any]] {
                for inner in inners {
                    if let ownedTagDecl = inner["ownedTagDecl"] as? [String: Any] {
                        if  let id = ownedTagDecl["id"] as? String {
                            if let rd = astDic[id] as? Record {
                                rd.name = v.qualType
                            }
                        }
                    }
                }
            }
        }
    }
    
    for (k, v) in astDic {
        if let v = v as? Record {
            if v.tagUsed == "struct" {
                print(v.name)
            }
        }
    }
}

astAnalys()


