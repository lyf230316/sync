//
//  StorageCoder.swift
//  esjson
//
//  Created by lyf on 2024/3/7.
//

import Foundation


func buildInType(_ name: String) -> String {
    guard let v = nameDic[name] else {
        return name
    }
    if let v = v as? TypeDef {
        if v.qualType == name {
            return name
        }
        return buildInType(v.qualType)
    } else if let v = v as? Record {
        if v.tagUsed == "struct" {
            if v.name.hasPrefix("struct ") {
                return v.name
            } else {
                return "struct " + v.name
            }
        } else if v.tagUsed == "union" {
            if v.name.hasPrefix("union") {
                return v.name
            } else {
                return "union " + v.name
            }
        } else {
            abort()
        }
    } else if let v = v as? Enum {
        return "enum " + v.name
    }
    else {
        abort()
    }
}

var typeDic: [String: String] = [:]

class StorageCoder: Ccode {
    
    func Ccode(_ t: TypeDef) -> String {
        var ccode = ""
        typeDic[t.name] = buildInType(t.name)
        ccode.append("typedef \(t.qualType) \(t.name)")
        return ccode
    }
    
    func Ccode(_ record: Record) -> String {
        var ccode = ""
        if record.tagUsed == "struct" {
            ccode.append("struct \(record.name){\n")
            for fld in record.fields {
                if fld.anonymous {
                    continue
                }
                if fld.name.hasPrefix("reserved") {
                    continue
                }
                if !fld.type.isEmpty {
                    ccode.append("\t\(fld.type) \(fld.name);\n")
                } else if let rcrd = fld.record {
                    let cstr = Ccode(rcrd)
                    for ln in cstr.split(separator: "\n") {
                        ccode.append("\t\(ln)\n")
                    }
                }
            }
            ccode.append("};\n")
        } else if record.tagUsed == "union" {
            ccode.append("union \(record.name){\n")
            for fld in record.fields {
                if fld.anonymous {
                    continue
                }
                if fld.name.hasPrefix("reserved") {
                    continue
                }
                if !fld.type.isEmpty {
                    ccode.append("\t\(fld.type) \(fld.name);\n")
                } else if let rcrd = fld.record {
                    let cstr = Ccode(rcrd)
                    for ln in cstr.split(separator: "\n") {
                        ccode.append("\t\(ln)\n")
                    }
                }
            }
            ccode.append("};\n")
        }
        return ccode
    }
    
    func Ccode(_ e: Enum) -> String {
        var ccode = ""
        ccode.append("enum \(e.name){\n")
        for fld in e.fields {
            if fld.anonymous {
                continue
            }
            if !fld.type.isEmpty {
                ccode.append("\t\(fld.name)\n")
            }
        }
        ccode.append("};\n")
        return ccode
    }
}
