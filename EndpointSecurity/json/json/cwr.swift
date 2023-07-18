//
//  cwr.swift
//  json
//
//  Created by msi on 2023/7/13.
//

import Foundation
import EndpointSecurity

public func es_message_t_size(_ message: UnsafeMutablePointer<es_message_t>) -> Int {
    var size = 0;
    size += MemoryLayout<UInt32>.size;
    return size
}
