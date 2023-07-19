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
        reloadMenu()
    }
    
    func config() -> [AnyHashable: Any] {
        var configPath = NSHomeDirectory()+"/.caiTool"
        var isDir: ObjCBool = false
        if FileManager.default.fileExists(atPath: configPath, isDirectory: &isDir) {
            if !isDir.boolValue {
                let alert = NSAlert()
                alert.messageText = "\(configPath)冲突"
                alert.informativeText = "手动处理冲突后再次启动"
                alert.addButton(withTitle: "确定")
                alert.runModal()
                NSApp.terminate(self)
            }
        } else {
            try! FileManager.default.createDirectory(atPath: configPath, withIntermediateDirectories: true)
        }
        configPath = configPath+"/config.plist"
        var dic: NSDictionary! = nil
        if FileManager.default.fileExists(atPath:configPath, isDirectory: &isDir) {
            if isDir.boolValue {
                let alert = NSAlert()
                alert.messageText = "\(configPath)冲突"
                alert.informativeText = "手动处理冲突后再次启动"
                alert.addButton(withTitle: "确定")
                alert.runModal()
                NSApp.terminate(self)
            } else {
                dic = NSDictionary(contentsOfFile: configPath)
            }
        }
        
        if dic == nil {
            dic = [
                "help":"tasks:[name:string,type:enum(\"shell\"),content:string]",
                "tasks":[
                ]
            ]
        }
        
        return dic as! [AnyHashable : Any]
    }
    
    func saveConfig(_ config:[AnyHashable: Any]) {
        let dic = config as NSDictionary
        var configPath = NSHomeDirectory()+"/.caiTool/config.plist"
        dic.write(toFile: configPath, atomically: true)
    }
    
    func reloadMenu() {
        let menu = NSMenu()
        
        menu.addItem(NSMenuItem(title: "reload", action: #selector(agents(_:)), keyEquivalent: ""))
        
        let config = config()
        
        
        
        
        statusBarItem.menu = menu
    }
    
    // actions
    
    @objc func reload(_ item: NSMenuItem) {
        reloadMenu()
    }
    
    @objc func agents(_ item: NSMenuItem) {
        print("agents")
    }
}
