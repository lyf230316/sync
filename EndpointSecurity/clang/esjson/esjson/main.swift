//
//  main.swift
//  esjson
//
//  Created by lyf on 2023/11/1.
//

import Foundation

var allIds: [String] = []
var astDic: [String: AstBase] = [:] // key: ast id
var nameDic: [String: AstBase] = [:] // key: name

func restoreArray(_ org: [Any]) -> [Any] {
    var arr: [Any] = []
    for item in org {
        if let v = item as? [String: Any] {
            arr.append(restoreDic(v))
        } else if let v = item as? [Any] {
            arr.append(restoreArray(v))
        } else {
            arr.append(item)
        }
    }
    return arr
}

func restoreDic(_ org: [String: Any]) -> [String: Any] {
    var dic: [String: Any] = [:]
    for (key, value) in org {
        if (key == "loc" || key == "range") {
            continue
        }
        if let v = value as? [String: Any] {
            dic[key] = restoreDic(v)
        } else if let v = value as? [Any] {
            dic[key] = restoreArray(v)
        } else {
            dic[key] = value
        }
    }
    return dic
}

func removeLocAndRange() {
    let jsonFile = "/Users/msi/Documents/GitHub/sync/EndpointSecurity/clang/EndpointSecurity.json"
    let data = try! Data(contentsOf: URL(filePath: jsonFile))
    var dic = try! JSONSerialization.jsonObject(with: data) as! [String: Any]
    
    let ndic = restoreDic(dic)
    let ndata = try! JSONSerialization.data(withJSONObject: ndic)
    try! ndata.write(to: URL(filePath: "/Users/msi/Documents/GitHub/sync/EndpointSecurity/clang/EndpointSecurity_l.json"), options: .atomic)
}

removeLocAndRange()

func astAnalys() {
    //    let jsonFile = "/Users/lyf/git/github/sync/EndpointSecurity/clang/EndpointSecurity.json"
    //    let jsonFile = "/Users/msi/git/github/lyf230316/sync/EndpointSecurity/clang/EndpointSecurity.json"
    let jsonFile = "/Users/msi/Documents/GitHub/sync/EndpointSecurity/clang/EndpointSecurity_l.json"
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
            if td.name != td.qualType {
                astDic[td.id] = td
                allIds.append(td.id)
            }
        case "RecordDecl":
            let rd = Record(inner)
            astDic[rd.id] = rd
            allIds.append(rd.id)
        case "FunctionDecl":
            let f = Function(inner)
            astDic[f.id] = f
            allIds.append(f.id)
        case "EnumDecl":
            let ed = Enum(inner)
            astDic[ed.id] = ed
            allIds.append(ed.id)
        case "VarDecl":
            let vd = Var(inner)
            astDic[vd.id] = vd
            allIds.append(vd.id)
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
                    if  let kind = inner["kind"] as? String,
                        kind == "ElaboratedType",
                        let arr = inner["inner"] as? [[String: Any]] {
                        for item in arr {
                            if let kind = item["kind"] as? String,
                               kind == "RecordType",
                               let decl = item["decl"] as? [String: Any],
                               let id = decl["id"] as? String,
                               let typedic = item["type"] as? [String: Any],
                               let qualType = typedic["qualType"] as? String
                            {
                                if let rd = astDic[id] as? Record {
                                    rd.name = qualType
                                }
                            } else if let kind = item["kind"] as? String,
                                      kind == "EnumType",
                                      let decl = item["decl"] as? [String: Any],
                                      let id = decl["id"] as? String,
                                      let typedic = item["type"] as? [String: Any],
                                      let qualType = typedic["qualType"] as? String
                            {
                                if let en = astDic[id] as? Enum {
                                    en.name = qualType
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    for (k,v) in astDic {
        if v.name != "" {
            nameDic[v.name] = v
        }
    }
    
    let msg = nameDic["es_message_t"]
    print(msg)
    
    //源代码
    for (k, v) in astDic {
        let coder = originCoder()
        if let v = v as? Record {
            if v.tagUsed == "struct" || v.tagUsed == "union" {
                if v.name.hasPrefix("es_") {
                    let code = coder.Ccode(v)
                    //                    print(code)
                }
            }
        }
    }
    
    //便于存储的代码
    var stg_h = """
#ifndef swr_h
#define swr_h

#include <string.h>
#include <stdlib.h>
#include <EndpointSecurity/EndpointSecurity.h>

"""
    for (k) in allIds {
        let v = astDic[k]
        let coder = StorageCoder()
        if let v = v as? Record {
            if v.tagUsed == "struct" ||
                v.tagUsed == "union" {
                if v.name.hasPrefix("es_") {
                    let code = coder.Ccode(v)
                    stg_h.append(code)
                    stg_h.append("\n")
                }
            }
        } else if let v = v as? Enum {
            if v.name.hasPrefix("es_") {
                let code = coder.Ccode(v)
                stg_h.append(code)
                stg_h.append("\n")
            }
        } else if let v = v as? TypeDef {
            let code = coder.Ccode(v)
//            print(code)
        }
    }
    print(stg_h)
    
//    print(typeDic as NSDictionary)
}


astAnalys()


