//
//  XpcClient.swift
//  EventsUI
//
//  Created by lyf on 2023/9/8.
//

import Foundation
import EService

class XpcClient: NSObject {
    static let share = XpcClient()
    
    var connection: NSXPCConnection!
    
    func connectService(name: String) {
        self.connection = NSXPCConnection(machServiceName: name)
        self.connection.remoteObjectInterface = NSXPCInterface(with: EService.self)
        self.connection.exportedInterface = NSXPCInterface(with:EServiceClient.self)
        self.connection.exportedObject = self;
        self.connection.resume()
    }
    
    
}
