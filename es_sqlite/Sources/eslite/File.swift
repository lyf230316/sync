//
//  File.swift
//  
//
//  Created by msi on 2023/5/5.
//

import Foundation
import SQLite

struct Db {
    let path: String
    let connect: Connection
    
    init(_ path: String) throws {
        self.path = path
        self.connect = try Connection(path)
    }
    
    
}
