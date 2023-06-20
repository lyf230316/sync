//
//  File.swift
//  
//
//  Created by lyf on 2023/6/19.
//
import Darwin
import Foundation
import EndpointSecurity
import Swr

class FileWriter {
    var indexStream: OutputStream
    var dataStream: OutputStream
    var indexOffset: Int = 0
    var dataOffset: Int = 0
    var dataFh: FileHandle
    var indexFh: FileHandle
    
    init(_ path: String) {
        let indexPath = "\(path).index"
        let dataPath = "\(path).data"
        FileManager.default.createFile(atPath: indexPath, contents: nil)
        FileManager.default.createFile(atPath: dataPath, contents: nil)
        indexStream = OutputStream(toFileAtPath: indexPath, append: true)!
        dataStream = OutputStream(toFileAtPath: dataPath, append: true)!
        indexFh = FileHandle(forWritingAtPath: indexPath)!
        dataFh = FileHandle(forWritingAtPath: dataPath)!
    }
    
    func write(_ buffer: UnsafePointer<UInt8>,_ size: Int) {
        autoreleasepool {
            let idata = NSData(bytesNoCopy: UnsafeMutableRawPointer(&dataOffset), length: MemoryLayout<Int>.size, freeWhenDone: false) as Data
            indexFh.write(idata)
            indexOffset += MemoryLayout<Int>.size
            let data = NSData(bytesNoCopy: UnsafeMutableRawPointer(mutating: buffer), length: size, freeWhenDone: false) as Data
            dataFh.write(data)
            dataOffset += size
        }
    }
    
    deinit {
        try? dataFh.close()
        try? indexFh.close()
    }
}

class EsWriter {
    static let maxCountInFile = 1024*1024*1024
    let outPath: String
    let profix: String
    var index = 0
    var fwriter: FileWriter
    let buf: UnsafeMutableRawPointer
    
    
    init(_ outPath: String) {
        self.outPath = outPath
        let df = DateFormatter()
        df.dateFormat = "yyyy_MM_dd_HH_mm_ss_"
        profix = df.string(from: Date())
        index += 1
        let fp = outPath+"/"+profix+"\(index)"
        fwriter = FileWriter(fp)
        buf = malloc(4096)
    }
    
    func createNewFile() {
        index += 1
        let fp = outPath+"/"+profix+"\(index)"
        fwriter = FileWriter(fp)
    }
    
    public func write(_ msg:UnsafePointer<es_message_t>) {
        let size = es_message_t_size(UnsafeMutablePointer(mutating: msg))
        es_message_t_write(UnsafeMutablePointer(mutating: msg), buf)
        fwriter.write(buf.bindMemory(to: UInt8.self, capacity: size), size)
        if fwriter.dataOffset >= EsWriter.maxCountInFile * MemoryLayout<Int>.size {
            print(fwriter.dataOffset)
            createNewFile()
        }
    }
}
