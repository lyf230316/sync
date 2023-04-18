//
//  AppDelegate.swift
//  AutoRun
//
//  Created by lyf on 2023/4/18.
//

import Foundation
import Cocoa
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    
    private var statusBar: NSStatusBar!
    private var statusItem: NSStatusItem!
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        statusBar = NSStatusBar.system
        statusItem = statusBar.statusItem(withLength: NSStatusItem.squareLength)
        statusItem.button?.image = NSImage(systemSymbolName: "hammer", accessibilityDescription: nil
          )
    }
}
