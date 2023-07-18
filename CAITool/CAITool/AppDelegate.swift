//
//  appDelegate.swift
//  CAITool
//
//  Created by msi on 2023/7/18.
//

import Foundation
import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate, ObservableObject {
    var statusBarItem: NSStatusItem!
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        itemInit()
    }
}

// statusBarItem
extension AppDelegate {
    
    func itemInit() {
        statusBarItem = NSStatusBar.system.statusItem(withLength: 43)
        statusBarItem.button!.title = "CAI"
        statusBarItem.button!.image = NSImage(systemSymbolName: "hammer", accessibilityDescription: nil)
        addMenu()
    }
    
    
    func addMenu() {
        let menu = NSMenu()
        
        menu.addItem(NSMenuItem(title: "启动项", action: #selector(agents(_:)), keyEquivalent: ""))
        
        statusBarItem.menu = menu
    }
    
    // actions
    
    @objc func agents(_ item: NSMenuItem) {
        print("agents")
    }
}
