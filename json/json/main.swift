//
//  main.swift
//  json
//
//  Created by lyf on 2023/4/19.
//

import Foundation
import SQLite3

func checkFeatures() {
    let file = "/Users/lyf/Documents/baidu/hi/mac/Sources/BIFAppResources/config/LOCAL_ONLY/features.json"
    let data = try! Data(contentsOf: URL(filePath: file))
    let dic = try! JSONSerialization.jsonObject(with: data)
    var names : NSMutableArray = []
    if let dic = dic as? [String: Any],let items = dic["items"] as? [[String:Any]] {
        for itm in items {
            let n = itm["name"]!
            if !names.contains(n) {
                names.add(n)
            }else{
                print(n)
            }
        }
    }
}
//checkFeatures()

func jsonToPlist() {
    let file = "/Users/lyf/Desktop/EndpointSecurity.json"
    let data = try! Data(contentsOf: URL(filePath: file))
    let dic = try! JSONSerialization.jsonObject(with: data)
    (dic as! NSDictionary).write(toFile: "/Users/lyf/Desktop/EndpointSecurity.plist", atomically: true)
}
//jsonToPlist()

func printCode(name: String,def:[String: Any],lev:Int = 0) {
    var sj = ""
    for i in  0 ..< lev {
        sj += "\t"
    }
    guard let tag = def["tagUsed"] else {
        return
    }
    print(sj,tag,name,"{")
    var inners = def["inner"]! as! [[String:Any]]
    var i = 0
    while i < inners.count {
        let inner = inners[i]
        let kind = inner["kind"] as! String
        if kind == "FieldDecl" {
            if let name = inner["name"] {
                var type = ""
                if let t = inner["type"] as? String {
                    type = t
                } else if let d = inner["type"] as? [String: String] {
                    type = d["qualType"] ?? ""
                }
                print(sj,"\t",type,name)
            }
        } else {
            printCode(name: "", def: inner, lev: lev+1)
            if i+1 < inners.count {
                i += 1
                let inner = inners[i]
                if let name = inner["name"] {
                    print(sj,"\t",name)
                }
            }
        }
        
        i += 1
    }
    print(sj,"}")
}

func astAnalys() {
    let file = "/Users/msi/git/github/sync/json/json/EndpointSecurity.json"
    let data = try! Data(contentsOf: URL(filePath: file))
    let dic = try! JSONSerialization.jsonObject(with: data) as! [String: Any]
//    print(dic.keys)
    
    var es_struct_names: [String] = []
    var es_structs: [String:[String: Any]] = [:]
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
                        if name.hasPrefix("es_") {
                            es_struct_names.append(name)
                            es_structs[name] = strt
//                            print(kind,":",name)
                        }
                    }
                }
            }
            //last
            i += 1
        }
    }
    
    //处理每个类型中的指针
    for n in es_struct_names {
        let def = es_structs[n]!
        printCode(name: n, def: def)
    }
}

astAnalys()
