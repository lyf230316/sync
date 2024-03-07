//
//  OriginCoder.swift
//  esjson
//
//  Created by lyf on 2024/3/7.
//

import Foundation

class originCoder {
    
}

extension originCoder : Ccode {
    func Ccode(_ t: TypeDef) -> String {
        var ccode = ""
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
                ccode.append("\t\(fld.type) \(fld.name);\n")
            } else if let rcrd = fld.record {
                let cstr = Ccode(rcrd)
                for ln in cstr.split(separator: "\n") {
                    ccode.append("\t\(ln)\n")
                }
            }
        }
        ccode.append("};\n")
        return ccode
    }
}
