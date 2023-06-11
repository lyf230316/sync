//
//  File.swift
//  
//
//  Created by msi on 2023/6/11.
//

import Foundation
//数据存储文件
class Config {
    var dbName: String
    
    init?(file: String) {
        guard let data = NSData(contentsOfFile: file) as? Data else {
            return nil
        }
        guard let dic = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else {
            return nil
        }
        guard let sf = dic["dbName"] as? String else {
            return nil
        }
        dbName = sf
    }
}

