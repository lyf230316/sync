//
//  HSFile.swift
//  HashStorage
//
//  Created by msi on 2023/7/26.
//

import Foundation
import CryptoKit

struct FileS{
    static func upload(_ file: String) -> Bool {
        let size = sizeOfFile(file)!
        let hashs = hashForFile(file)
        let md5 = hashs[0]
        let sha1 = hashs[1]
        let sha256 = hashs[2]
        let sha512 = hashs[3]
        var f = File.findOrAdd(size: size, md5: md5, sha1: sha1, sha256: sha256, sha512: sha512)
        var blockIdArray: [Int64] = []
        let r = splitFile(file) { blkPath in
            if let block = self.uploadBlock(blkPath) {
                blockIdArray.append(block.id)
                return true
            } else {
                return false
            }
        }
        if r {
            f.blocks = blockIdArray.map({ i in
                String(i)
            }).joined(separator: ",")
            f.state = File.State.finish.rawValue
            f.update()
            return true
        } else {
            return false
        }
    }
    
    static func uploadBlock(_ file: String) -> Block? {
        let size = sizeOfFile(file)!
        let hashs = hashForFile(file)
        let md5 = hashs[0]
        let sha1 = hashs[1]
        let sha256 = hashs[2]
        let sha512 = hashs[3]
        guard let repo = Repo.findEnable() else {
            abort()
        }
        var block = Block.findOrAdd(size: size, md5: md5, sha1: sha1, sha256: sha256, sha512: sha512,repo: repo.id)
        if block.state == Block.State.finish.rawValue {
            return block
        }
        
        let tmpDir = "/tmp/"+Bundle.main.bundleIdentifier!
        let gitDir = tmpDir+"/gitDir"
        let keyPath = tmpDir+"/key"
        try! repo.key.write(toFile: keyPath, atomically: true, encoding: .utf8)
        let r = Storage.upload(wd: gitDir, file: file, keyPath: keyPath, repo: repo.url, branch: sha1, commit: sha512)
        if r {
            block.state = Block.State.finish.rawValue
            block.update()
            return block
        } else {
            return nil
        }
    }
}

