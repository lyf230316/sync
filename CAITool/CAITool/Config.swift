//
//  Config.swift
//  CAITool
//
//  Created by msi on 2023/7/20.
//

import Foundation

enum TarskType: Codable {
    case shell(_ content: String)
}

enum RunType: Codable {
    case none
    case loop(_ time: TimeInterval)
    case keepAlive
}

struct Tarsk : Codable {
    var name: String
    var type: TarskType
    var runType: RunType
}

struct Config: Codable {
    var config: String = ""
    var tarsks: [String: Tarsk]
}
