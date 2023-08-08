//
//  fileDb.swift
//  HStorage
//
//  Created by msi on 2023/8/6.
//

import Foundation
import SQLite

struct FileDb {
    static let share = FileDb()
    var connect:Connection
    init() {
        let path = execDir()+"/db/fileDb.sqlite"
        connect = try! Connection(path)
        File.initTable(connect)
    }
}

struct File: Codable {
    var id: Int64 = 0
    var size: Int64
    var md5: String
    var sha1: String
    var sha256: String
    var sha512: String
    var blocks: String
    var state: Int = File.State.none.rawValue
    
    static func findOrAdd(size: Int64, md5: String, sha1: String, sha256: String, sha512: String) {
        if let f = File.find(size: size, md5: md5, sha1: sha1, sha256: sha256, sha512: sha512) {
            return f
        } else {
            let f = File.add(size: size, md5: md5, sha1: sha1, sha256: sha256, sha512: sha512, blocks: "", state: 0)
            return f
        }
    }
    
    func update() {
        try! FileDb.share.connect.run(File.files.filter(File.id == id).update(
            File.size <- size,
            File.md5 <- md5,
            File.sha1 <- sha1,
            File.sha256 <- sha256,
            File.sha512 <- sha512,
            File.blocks <- blocks,
            File.state <- state
        ))
    }
    
    static func add(size: Int64, md5: String, sha1: String, sha256: String, sha512: String, blocks: String, state: Int) -> File {
        let id = try! FileDb.share.connect.run(File.files.insert(
            File.size <- size,
            File.md5 <- md5,
            File.sha1 <- sha1,
            File.sha256 <- sha256,
            File.sha512 <- sha512,
            File.blocks <- blocks,
            File.state <- state
        ))
        return File(id: id, size: size, md5: md5, sha1: sha1, sha256: sha256, sha512: sha512, blocks: blocks, state: state)
    }
    
    static func find(size: Int64,md5: String,sha1: String, sha256: String, sha512: String) -> File? {
        let q = try! FileDb.share.connect.prepareRowIterator(files.where(
            File.size == size &&
            File.md5 == md5 &&
            File.sha1 == sha1 &&
            File.sha256 == sha256 &&
            File.sha512 == sha512
        ))
        if let row = q.next() {
            var f = File(size: try! row.get(File.size),
                         md5: try! row.get(File.md5),
                         sha1: try! row.get(File.sha1),
                         sha256: try! row.get(File.sha256),
                         sha512: try! row.get(File.sha512),
                         blocks: try! row.get(File.blocks),
                         state: try! row.get(File.state))
            f.id = try! row.get(File.id)
            return f
        }
        return nil
    }
}

extension File {
    enum State: Int {
        case none
        case finish
    }
}

extension File {
    static let files = Table("file")
    static let id = Expression<Int64>("id")
    static let size = Expression<Int64>("size")
    static let md5 = Expression<String>("md5")
    static let sha1 = Expression<String>("sha1")
    static let sha256 = Expression<String>("sha256")
    static let sha512 = Expression<String>("sha512")
    static let blocks = Expression<String>("blocks")
    static let state = Expression<Int>("state")
    
    static func initTable(_ db: Connection) {
        try! db.run(files.create(ifNotExists: true, block: { tb in
            tb.column(id, primaryKey: .autoincrement)
            tb.column(md5)
            tb.column(sha1)
            tb.column(sha256)
            tb.column(sha512)
            tb.column(blocks)
            tb.column(state)
        }))
        
        try! db.run(files.createIndex(size, ifNotExists: true))
        try! db.run(files.createIndex(md5, ifNotExists: true))
        try! db.run(files.createIndex(sha1, ifNotExists: true))
        try! db.run(files.createIndex(sha256, ifNotExists: true))
        try! db.run(files.createIndex(sha512, ifNotExists: true))
        
        try! db.run(files.createIndex(size,md5,ifNotExists: true))
        try! db.run(files.createIndex(size,sha1,ifNotExists: true))
        try! db.run(files.createIndex(size,sha256,ifNotExists: true))
        try! db.run(files.createIndex(size,sha512,ifNotExists: true))
        
        try! db.run(files.createIndex(size,md5,sha1,sha256,sha512, ifNotExists: true))
    }
}
