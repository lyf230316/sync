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

class StorageCoder {
    
}

extension StorageCoder: Ccode {
    
    func Ccode(_ t: TypeDef) -> String {
        var ccode = ""
        typeDic[t.name] = buildInType(t.name)
        ccode.append("typedef \(t.qualType) \(t.name)")
        return ccode
    }
    
    func Ccode(_ record: Record, filedName: String? = nil) -> String {
        var ccode = ""
        if record.tagUsed == "struct" {
            if record.name == "" {
                ccode.append("struct {\n")
            } else {
                ccode.append("struct stg_\(record.name){\n")
            }
            for fld in record.fields {
                if fld.anonymous {
                    continue
                }
                if fld.name.hasPrefix("reserved") || fld.name.hasPrefix("opaque") {
                    continue
                }
                if !fld.type.isEmpty {
                    if fld.type.hasPrefix("es_") && !buildInType(fld.type).hasPrefix("enum") {
                        ccode.append("\tstg_\(fld.type) \(fld.name);\n")
                    } else {
                        ccode.append("\t\(fld.type) \(fld.name);\n")
                    }
                } else if let rcrd = fld.record {
                    let cstr = Ccode(rcrd, filedName: fld.name)
                    for ln in cstr.split(separator: "\n") {
                        ccode.append("\t\(ln)\n")
                    }
                }
            }
            if let filedName = filedName {
                ccode.append("} \(filedName);\n")
            } else {
                ccode.append("};\n")
            }
        } else if record.tagUsed == "union" {
            if record.name == "" {
                ccode.append("union {\n")
            } else {
                ccode.append("union stg_\(record.name){\n")
            }
            for fld in record.fields {
                if fld.anonymous {
                    continue
                }
                if fld.name.hasPrefix("reserved") || fld.name.hasPrefix("opaque") {
                    continue
                }
                if !fld.type.isEmpty {
                    var codeType = fld.type
                    if fld.type.hasPrefix("es_") {
                        if !buildInType(fld.type).hasPrefix("enum") {
                            codeType = "stg_\(fld.type)"
                        }
                    }
                    if codeType.contains("* _Nonnull") || codeType.contains("* _Nullable") {
                        
                    } else {
                        codeType = codeType + " * _Nonnull"
                    }
                    ccode.append("\t\(codeType) \(fld.name);\n")
                } else if let rcrd = fld.record {
                    let cstr = Ccode(rcrd, filedName: fld.name)
                    for ln in cstr.split(separator: "\n") {
                        ccode.append("\t\(ln)\n")
                    }
                }
            }
            if let filedName = filedName {
                ccode.append("} \(filedName);\n")
            } else {
                ccode.append("};\n")
            }
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
