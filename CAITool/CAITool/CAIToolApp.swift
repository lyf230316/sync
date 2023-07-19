//
//  CAIToolApp.swift
//  CAITool
//
//  Created by msi on 2023/7/18.
//

import SwiftUI

@main
struct CAIToolApp: App {
    @NSApplicationDelegateAdaptor (AppDelegate.self) var delegate
    
    var body: some Scene {        
        Settings {
            Text("Empty")
        }
    }
}
