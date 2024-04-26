//
//  TypeDef.swift
//  esjson
//
//  Created by lyf on 2023/11/1.
//

import Foundation

class AstBase {
    var ast: [String: Any]
    var name: String = ""
    var id: String
    
    init(_ dic: [String :Any]) {
        ast = dic
        id = dic["id"] as! String
        if let n = dic["name"] as? String {
            name = n
        }
    }
}

class TypeDef: AstBase {
    var qualType: String
    
    override init(_ dic: [String: Any]) {
        qualType = (dic["type"] as! [String: Any])["qualType"] as! String
        if let inners = dic["inner"] as? [[String: Any]] {
            for inner in inners {
                if let kind = inner["kind"] as? String {
                    if kind == "BuiltinType" {
                        let bt = BuiltinType(inner)
                        astDic[bt.id] = bt
                        allIds.append(bt.id)
                    }
                }
            }
        }
        super.init(dic)
    }
}

//定义变量

class Field: AstBase {
    var type: String = ""
    var record: Record? = nil
    var anonymous: Bool = false //匿名
    override init(_ dic: [String : Any]) {
        if let tdic = dic["type"] as? [String: Any] {
            if let t = tdic["qualType"] as? String {
                let regex = try! NSRegularExpression(pattern: "\\(.*\\)", options: NSRegularExpression.Options.caseInsensitive)
                let range = NSMakeRange(0, t.count)
                let modString = regex.stringByReplacingMatches(in: t, options: [], range: range, withTemplate: "XX")
                if modString != t {
                    anonymous = true
                }
                type = modString
            }
        }
        super.init(dic)
    }
}

class Record: AstBase {
    var completeDefinition: Bool = false
    var fields: [Field] = []
    var tagUsed: String
    
    override init(_ dic: [String : Any]) {
        if let cd = dic["completeDefinition"] as? Bool {
            completeDefinition = cd
        }
        tagUsed = dic["tagUsed"] as! String
        fields = []
        super.init(dic)
        if let fds = dic["inner"] as? [[String: Any]] {
            var fdarr: [Field] = []
            var i = 0
            while i < fds.count {
                let fd = fds[i];
                if let kind = fd["kind"] as? String {
                    if kind == "FieldDecl" {
                        fdarr.append(Field(fd))
                    } else if kind == "RecordDecl" {
                        let rcd = Record(fd)
                        let fld = Field(fd)
                        i += 1
                        let next = fds[i];
                        if let name = next["name"] as? String {
                            fld.name = name
                        }
                        fld.record = rcd
                        fdarr.append(fld)
                    }
                }
                i += 1
            }
            fields = fdarr
        }
        
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

class Var: AstBase {
    var type: String = ""
    var storageClass: String
    var mangledName: String
    
    override init(_ dic: [String : Any]) {
        if let tdic = dic["type"] as? [String: Any] ,
           let t = tdic["qualType"] as? String {
            type = t
        }
        storageClass = dic["storageClass"] as! String
        mangledName = dic["mangledName"] as! String
        super.init(dic)
    }
}

class BuiltinType: AstBase {
    var qualType: String
    
    override init(_ dic: [String: Any]) {
        qualType = (dic["type"] as! [String: Any])["qualType"] as! String
        super.init(dic)
    }
}

class Pointer: AstBase {
    var qualType: String
    
    override init(_ dic: [String: Any]) {
        qualType = (dic["type"] as! [String: Any])["qualType"] as! String
        super.init(dic)
    }
}
