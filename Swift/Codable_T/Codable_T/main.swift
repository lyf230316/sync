//
//  main.swift
//  Codable_T
//
//  Created by lyf on 2023/8/14.
//

import Foundation

print("Hello, World!")

let encoder = DatabaseEncoder()
let m = Model(name: "name", age: 10)
let dic = try! encoder.encode(m)
print(dic)
