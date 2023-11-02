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

class Function: AstBase {
    var storageClass: String = ""
    var mangledName: String
    var type: String = ""
    var inline: Bool = false
    var isUsed: Bool = false
    
    override init(_ dic: [String : Any]) {
        if let sc = dic["storageClass"] as? String {
            storageClass = sc
        }
        mangledName = dic["mangledName"] as! String
        if let tdic = dic["type"] as? [String: Any],
           let t = tdic["qualType"] as? String {
            type = t
        }
        if let il = dic["inline"] as? Bool {
            inline = il
        }
        if let iu = dic["isUsed"] as? Bool {
            isUsed = iu
        }
        super.init(dic)
    }
}

class Enum: AstBase {
    var fields: [Field]
    
    override init(_ dic: [String : Any]) {
        let fds = dic["inner"] as! [[String: Any]]
        var fdarr: [Field] = []
        fds.forEach { fd in
            fdarr.append(Field(fd))
        }
        fields = fdarr
        super.init(dic)
    }
}
