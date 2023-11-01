//
//  main.swift
//  esjson
//
//  Created by lyf on 2023/11/1.
//

import Foundation

var typedefs: [TypeDef] = []
var records: [Record] = []

func astAnalys() {
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
            typedefs.append(TypeDef(inner))
        case "RecordDecl":
            records.append(Record(inner))
        default:
            print("\(kind) kind 没有处理")
            return
        }
        i += 1
    }
}

astAnalys()


