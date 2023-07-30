//
//  HSFile.swift
//  HashStorage
//
//  Created by msi on 2023/7/26.
//

import Foundation
import CryptoKit

struct HSFile: Codable {
    var id = UUID()
    var path: String
    var size: UInt64
    var md5: String
    var sha1: String
    var sha256: String
    var sha512: String
    
    init?(path: String) {
        var isDir: ObjCBool = false
        guard FileManager.default.fileExists(atPath: path, isDirectory: &isDir) && !isDir.boolValue else {
            return nil
        }
        guard let fileh = FileHandle(forReadingAtPath: path) else {
            return nil
        }
        self.path = path
        size = try! fileh.seekToEnd()
        md5 = md5File(path)
        sha1 = sha1File(path)
        var hasher256 = SHA256()
        sha256 = hashFile(path, &hasher256)
        var hasher512 = SHA512()
        sha512 = hashFile(path, &hasher512)
    }
}

struct Repo: Codable {
    var id = UUID()
    var gitUrl: String
    var email: String
    var rsaKey: String
    var rsaPub: String
}

