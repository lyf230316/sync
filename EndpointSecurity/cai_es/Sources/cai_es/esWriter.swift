//
//  File.swift
//  
//
//  Created by lyf on 2023/6/19.
//

import Foundation
import EndpointSecurity

class EsWriter {
    static let maxCountInFile = 10^6
    let outPath: String
    let profix: String
    var index = 0
    var indexFh: FileHandle
    var dataFh: FileHandle
    
    init(_ outPath: String) {
        self.outPath = outPath
        let df = DateFormatter()
        df.dateFormat = "yyyy_MM_dd_HH_mm_ss_"
        profix = df.string(from: Date())
        index += 1
        let indexPath = outPath+"/"+profix+"\(index).index"
        let dataPath = outPath+"/"+profix+"\(index).data"
        FileManager.default.createFile(atPath: indexPath, contents: nil)
        FileManager.default.createFile(atPath: dataPath, contents: nil)
        indexFh = FileHandle(forWritingAtPath: indexPath)!
        dataFh = FileHandle(forWritingAtPath: dataPath)!
    }
    
    func createNewFile() {
        index += 1
        let indexPath = outPath+"/"+profix+"\(index).index"
        let dataPath = outPath+"/"+profix+"\(index).data"
        FileManager.default.createFile(atPath: indexPath, contents: nil)
        FileManager.default.createFile(atPath: dataPath, contents: nil)
        indexFh = FileHandle(forWritingAtPath: indexPath)!
        dataFh = FileHandle(forWritingAtPath: dataPath)!
    }
    
    public func write(_ msg:UnsafePointer<es_message_t>) {
        
    }
}
