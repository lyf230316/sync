//
//  AppDelegate.swift
//  EventsUI
//
//  Created by lyf on 2023/9/8.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        xpc_test()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
    
}

extension AppDelegate {
    @IBAction func Preferences(_ sender: NSMenuItem) {
        guard let ctl = NSStoryboard(name: "Preferences", bundle: nil).instantiateInitialController() as? NSViewController else {
            abort()
        }
        NSApplication.shared.mainWindow?.contentViewController?.presentAsModalWindow(ctl)
    }
}
