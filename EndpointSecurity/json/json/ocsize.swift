//
//  ocsize.swift
//  json
//
//  Created by lyf on 2023/8/23.
//

import Foundation

extension Struct {
    func ocSize() {
        if self.isUnoin {
            return
        }
        if self.name.contains("__") {
            return
        }
        let on = name.originName()
        print("size_t \(name)_size(\(name) *\(on)) {")
        print("    size_t size = 0;\n")
        var index = 0
        while index < members.count {
            let member = members[index]
            ocSize(member,"\(on)->", "\t")
            index += 1
        }
        print("")
        print("    return size;")
        print("}\n")
    }
    
    func ocSize(_ mem: Member,_ ctx: String,_ indentation: String = "\t") {
        if name.hasPrefix("reserved") || name == "opaque" {
            return
        }
        
    }
}
