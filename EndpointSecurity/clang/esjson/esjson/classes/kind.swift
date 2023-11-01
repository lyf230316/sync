//
//  TypeDef.swift
//  esjson
//
//  Created by lyf on 2023/11/1.
//

import Foundation

class AstBase {
    var name: String = ""
    
    init(_ dic: [String :Any]) {
        if let n = dic["name"] as? String {
            name = n
        }
    }
}

class TypeDef: AstBase {
    var qualType: String
    
    override init(_ dic: [String: Any]) {
        qualType = (dic["type"] as! [String: Any])["qualType"] as! String
        super.init(dic)
    }
}

//定义变量
class Field: AstBase {
    
}

class Record: AstBase {
    var completeDefinition: Bool
    var fields: [Field]
    var tagUsed: String
    
    override init(_ dic: [String : Any]) {
        completeDefinition = dic["completeDefinition"] as! Bool
        tagUsed = dic["tagUsed"] as! String
        let fds = dic["inner"] as! [[String: Any]]
        var fdarr: [Field] = []
        fds.forEach { fd in
            fdarr.append(Field(fd))
        }
        fields = fdarr
        super.init(dic)
    }
}

class UnionRecord {
    
}
