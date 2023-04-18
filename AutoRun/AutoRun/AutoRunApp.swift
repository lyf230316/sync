//
//  AutoRunApp.swift
//  AutoRun
//
//  Created by lyf on 2023/4/18.
//

import SwiftUI
import Cocoa

@main
struct AutoRunApp: App {
    
    @NSApplicationDelegateAdaptor(AppDelegate.self)
    private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            EmptyView()
        }
    }
}
