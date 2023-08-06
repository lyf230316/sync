//
//  blkDb.swift
//  HStorage
//
//  Created by msi on 2023/8/5.
//

import Foundation
import SQLite

class BlkDb {
    static let share = BlkDb()
    var connect:Connection
    
    init() {
        let path = execDir()+"/blkDb.sqlite"
        connect = try! Connection(path)
    }
    
    func initTables() {
        Block.initTable(connect)
    }
}

struct Block: Codable {
    var id: Int64
    var size: Int64
    var md5: String
    var sha1: String
    var sha256: String
    var sha512: String
    var repo: Int64
    var state: Int
}

extension Block {
    static let blks = Table("block")
    static let id = Expression<Int64>("id")
    static let size = Expression<Int64>("size")
    static let md5 = Expression<String>("md5")
    static let sha1 = Expression<String>("sha1")
    static let sha256 = Expression<String>("sha256")
    static let sha512 = Expression<String>("sha512")
    static let repo = Expression<Int64>("repo")
    static let state = Expression<Int>("state")
    
    static func initTable(_ db: Connection) {
        try! db.run(blks.create(ifNotExists: true, block: { tb in
            tb.column(id, primaryKey: .autoincrement)
            tb.column(md5)
            tb.column(sha1)
            tb.column(sha256)
            tb.column(sha512)
            tb.column(repo)
            tb.column(state)
        }))
        
        try! db.run(blks.createIndex(size, ifNotExists: true))
        try! db.run(blks.createIndex(md5, ifNotExists: true))
        try! db.run(blks.createIndex(sha1, ifNotExists: true))
        try! db.run(blks.createIndex(sha256, ifNotExists: true))
        try! db.run(blks.createIndex(sha512, ifNotExists: true))
        
        try! db.run(blks.createIndex(size,md5,ifNotExists: true))
        try! db.run(blks.createIndex(size,sha1,ifNotExists: true))
        try! db.run(blks.createIndex(size,sha256,ifNotExists: true))
        try! db.run(blks.createIndex(size,sha512,ifNotExists: true))
        try! db.run(blks.createIndex(size,md5,sha1,sha256,sha512, unique: true, ifNotExists: true))
    }
    
    static func insert(size: Int64, md5: String, sha1: String, sha256: String, sha512: String, repo: Int64, state: Int) -> Block {
        let id = try! BlkDb.share.connect.run(blks.insert(
            Block.size <- size,
            Block.md5 <- md5,
            Block.sha1 <- sha1,
            Block.sha256 <- sha256,
            Block.sha512 <- sha512,
            Block.repo <- repo
        ))
        var blk = Block(id: id, size: size, md5: md5, sha1: sha1, sha256: sha256, sha512: sha512, repo: repo, state: state)
        return blk
    }
    
    
}

struct Repo: Codable {
    var id: Int64
    var url: String
    var email: String
    var key: String
    var keyPub: String
}

extension Repo {
    static let repos = Table("repo")
    static let id = Expression<Int64>("id")
    static let url = Expression<Int64>("url")
    static let email = Expression<Int64>("email")
    static let key = Expression<Int64>("key")
    static let keyPub = Expression<Int64>("keyPub")
    
    static func initTable(_ db: Connection) {
        try! db.run(repos.create(ifNotExists: true, block: { tb in
            tb.column(id, primaryKey: .autoincrement)
            tb.column(url)
            tb.column(email)
            tb.column(key)
            tb.column(keyPub)
        }))
        
        try! db.run(repos.createIndex(url, ifNotExists: true))
        try! db.run(repos.createIndex(email, ifNotExists: true))
    }
}
