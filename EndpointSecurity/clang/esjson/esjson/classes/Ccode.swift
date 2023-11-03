//
//  Ccode.swift
//  esjson
//
//  Created by msi on 2023/11/2.
//

import Foundation

protocol Ccode {
    func Ccode() -> String
}

extension Record: Ccode {
    func Ccode() -> String {
        var ccode = ""
        if self.tagUsed == "struct" {
            ccode.append("struct \(self.name){\n")
            for fld in self.fields {
                if !fld.type.isEmpty {
                    ccode.append("\t\(fld.type) \(fld.name);\n")
                } else if let rcrd = fld.record {
                    let cstr = rcrd.Ccode()
                    for ln in cstr.split(separator: "\n") {
                        ccode.append("\t\(ln)\n")
                    }
                }
            }
            ccode.append("};\n")
        } else if self.tagUsed == "union" {
            ccode.append("union \(self.name){\n")
            for fld in self.fields {
                if !fld.type.isEmpty {
                    ccode.append("\t\(fld.type) \(fld.name);\n")
                } else if let rcrd = fld.record {
                    let cstr = rcrd.Ccode()
                    for ln in cstr.split(separator: "\n") {
                        ccode.append("\t\(ln)\n")
                    }
                }
            }
            ccode.append("};\n")
        }
        return ccode
    }
}
