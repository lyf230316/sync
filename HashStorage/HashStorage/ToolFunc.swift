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

func execDir() -> String {
    let path = CommandLine.arguments.first!
    return (path as NSString).deletingLastPathComponent
}


func sizeOfFile(_ path: String) -> Int64? {
    guard let fh = FileHandle(forReadingAtPath: path) else {
        return nil
    }
    defer {
        try! fh.close()
    }
    let size: Int64 = Int64(try! fh.seekToEnd())
    return size
}

func hashForFile(_ path: String) -> [String] {
    let fileStream = InputStream(fileAtPath: path)!
    fileStream.open()
    defer {
        fileStream.close()
    }
    let bufferSize = NSPageSize() * 8
    let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: bufferSize)
    var md5 = Insecure.MD5()
    var sha1 = Insecure.SHA1()
    var sha256 = SHA256()
    var sha512 = SHA512()
    while fileStream.hasBytesAvailable {
        let read = fileStream.read(buffer, maxLength: bufferSize)
        let bufferPointer = UnsafeRawBufferPointer(start: buffer, count: read)
        md5.update(bufferPointer: bufferPointer)
        sha1.update(bufferPointer: bufferPointer)
        sha256.update(bufferPointer: bufferPointer)
        sha512.update(bufferPointer: bufferPointer)
    }
    var res: [String] = []
    res.append(md5.finalize().map { String(format: "%02hhx", $0) }.joined())
    res.append(sha1.finalize().map { String(format: "%02hhx", $0) }.joined())
    res.append(sha256.finalize().map { String(format: "%02hhx", $0) }.joined())
    res.append(sha512.finalize().map { String(format: "%02hhx", $0) }.joined())
    return res
}

func splitFile(_ file: String, upBlk: (String) -> Bool) -> Bool {
    let size = sizeOfFile(file)!
    let blockDir = tmpDir+"/Blocks"
    if FileManager.default.fileExists(atPath: blockDir) {
        try! FileManager.default.removeItem(atPath: blockDir)
    }
    
    let task = Process()
    task.executableURL = URL(string: "file:///bin/bash")
    task.environment = [
        "$PATH": "/Users/msi/radioconda/bin /Users/msi/radioconda/condabin /usr/local/go/bin /Users/msi/.cargo/bin /usr/local/bin /System/Cryptexes/App/usr/bin /usr/bin /bin /usr/sbin /sbin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin /Library/Apple/usr/bin /Applications/VMware Fusion.app/Contents/Public"
    ]
    let shell = String(format: """
cd %@
split -b 32M -d -a 6 %@ split_block_
""", blockDir, file)
    let num = (size+32*1024*1024-1)/(32*1024*1024)
    for i in 1 ... num {
        let blkPath = blockDir+"/split_block_"+String(format: "%.6d", i)
        let r = upBlk(blkPath)
        if !r {
            return false
        }
    }
    return true
}
