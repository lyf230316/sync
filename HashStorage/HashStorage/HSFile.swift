//
//  HSFile.swift
//  HashStorage
//
//  Created by msi on 2023/7/26.
//

import Foundation
import CryptoKit

struct FileS{
    static func upload(_ file: String) {
        let size = sizeOfFile(file)!
        let hashs = hashForFile(file)
        let md5 = hashs[0]
        let sha1 = hashs[1]
        let sha256 = hashs[2]
        let sha512 = hashs[3]
        var f = File.findOrAdd(size: size, md5: md5, sha1: sha1, sha256: sha256, sha512: sha512)
        
    }
}

