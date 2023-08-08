//
//  repoDb.swift
//  HStorage
//
//  Created by lyf on 2023/8/8.
//

import Foundation

struct RepoDb {
    static let share = RepoDb()
    var connect:Connection
    init() {
        let path = execDir()+"/db/repoDb.sqlite"
        connect = try! Connection(path)
        Repo.initTable(connect)
    }
}

struct Repo: Codable {
    var id: Int64
    var url: String
    var email: String
    var key: String
    var keyPub: String
    var state: Int
}

extension Repo {
    static let repos = Table("repo")
    static let id = Expression<Int64>("id")
    static let url = Expression<Int64>("url")
    static let email = Expression<Int64>("email")
    static let key = Expression<Int64>("key")
    static let keyPub = Expression<Int64>("keyPub")
    static let state = Expression<Int>("state")
    
    static func initTable(_ db: Connection) {
        try! db.run(repos.create(ifNotExists: true, block: { tb in
            tb.column(id, primaryKey: .autoincrement)
            tb.column(url)
            tb.column(email)
            tb.column(key)
            tb.column(keyPub)
            tb.column(state)
        }))
        
        try! db.run(repos.createIndex(url, ifNotExists: true))
        try! db.run(repos.createIndex(email, ifNotExists: true))
    }
    
    static func findEnable() -> Repo? {
        let q = try! RepoDb.share.connect.prepareRowIterator(repos.where(
            Repo.state == 0
        ))
        if let row = q.next() {
            var rp = Repo(id: try! row.get(Repo.id),
                          url: try! row.get(Repo.url),
                          email: try! row.get(Repo.email),
                          key: try! row.get(Repo.key),
                          keyPub: try! row.get(Repo.keyPub),
                          state: try! row.get(Repo.state))
            return rp
        }
        return nil
    }
}
