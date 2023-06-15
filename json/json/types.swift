//
//  types.swift
//  json
//
//  Created by lyf on 2023/6/13.
//

import Foundation

extension String {
    static let typeDic = [
        "uint32_t": "UInt32",
        "uint64_t": "UInt64",
        "struct timespec": "Double",
        "uint64_t[]": "Data",
    ]
    
    func camelCaseFromSnakeCase() -> String {
        let value = self.lowercased()
                        .split(separator: "_")
                        .drop { $0.isEmpty }
                        .map { $0.prefix(1).uppercased()+$0.dropFirst() }
                        .joined()
        return value.prefix(1).lowercased()+value.dropFirst()
    }
    
    func convertType() -> String {
        if let v = String.typeDic[self] {
            return v
        }
        if self.localizedStandardContains(" * ") {
            return "UInt64"
        }
        return self
    }
}

struct Member {
    var name: String
    var type: String
}

struct Struct {
    var isUnoin: Bool = false
    var name: String
    var members: [Member] = []
    
    
    func printTable() {
        let clsName = name.camelCaseFromSnakeCase()
        print("class \(clsName) {")
        print("\tstatic let tableName = Table(\"\(clsName)\")\n")
        for member in members {
            print("\tstatic let \(member.name) = Expression<\(member.type)>(\"\(member.name)\")")
        }
        print("}\n")
    }
    
    func printCStruct() {
        let clsName = name.camelCaseFromSnakeCase()
        var tag = "struct"
        if self.isUnoin {
            tag = "unoin"
        }
        print("\(tag) \(clsName) {")
        for member in members {
            if member.name == "reserved" {
                continue
            }
            print("\t\(member.type.camelCaseFromSnakeCase()) \(member.name)")
        }
        print("}\n")
    }
}

struct Enum {
    var name: String
    var values: [String] = []
}

struct Typedef {
    var name: String
    var qualType: String
}

enum ESType {
    case es_enum(Enum)
    case typedef(Typedef)
    case es_struct(Struct)
}

