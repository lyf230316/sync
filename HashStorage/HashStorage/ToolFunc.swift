//
//  ToolFunc.swift
//  HashStorage
//
//  Created by msi on 2023/7/26.
//

import CryptoKit
import CommonCrypto
import Foundation


func md5File(_ path: String) -> String {
    let fileStream = InputStream(fileAtPath: path)!
    fileStream.open()
    let bufferSize = NSPageSize() * 8
    let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: bufferSize)
    
    var context = CC_MD5_CTX()
    CC_MD5_Init(&context)
    while fileStream.hasBytesAvailable {
        let read = fileStream.read(buffer, maxLength: bufferSize)
        CC_MD5_Update(&context, buffer, numericCast(read))
    }
    buffer.deallocate()
    fileStream.close()
    var digest = Data(count: Int(CC_MD5_DIGEST_LENGTH))
    digest.withUnsafeMutableBytes {
        _ = CC_MD5_Final($0, &context)
    }
    return digest.map { String(format: "%02hhx", $0) }.joined()
}

func sha1File(_ path: String) -> String {
    let fileStream = InputStream(fileAtPath: path)!
    fileStream.open()
    let bufferSize = NSPageSize() * 8
    let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: bufferSize)
    
    var context = CC_SHA1_CTX()
    CC_SHA1_Init(&context)
    while fileStream.hasBytesAvailable {
        let read = fileStream.read(buffer, maxLength: bufferSize)
        CC_SHA1_Update(&context, buffer, numericCast(read))
    }
    buffer.deallocate()
    fileStream.close()
    var digest = Data(count: Int(CC_SHA1_DIGEST_LENGTH))
    digest.withUnsafeMutableBytes {
        _ = CC_SHA1_Final($0, &context)
    }
    return digest.map { String(format: "%02hhx", $0) }.joined()
}


func hashFile<T:HashFunction>(_ path: String,_ hasher:inout T) -> String {
    let fileStream = InputStream(fileAtPath: path)!
    fileStream.open()
    let bufferSize = NSPageSize() * 8
    let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: bufferSize)
    while fileStream.hasBytesAvailable {
        let read = fileStream.read(buffer, maxLength: bufferSize)
        let bufferPointer = UnsafeRawBufferPointer(start: buffer, count: read)
        hasher.update(bufferPointer: bufferPointer)
    }
    let digest = hasher.finalize()
    return digest.map { String(format: "%02hhx", $0) }.joined()
}
