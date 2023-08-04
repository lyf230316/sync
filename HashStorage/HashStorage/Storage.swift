//
//  Storage.swift
//  HashStorage
//
//  Created by msi on 2023/7/27.
//

import Foundation



class Storage {
    
    
    public class func upload(wd:String, file: String,key: String) {
        guard prepareGitDir(wd: wd) else {
            return
        }
        try! FileManager.default.copyItem(atPath: file, toPath: wd)
        
    }
    
    class func prepareGitDir(wd: String) -> Bool {
        if FileManager.default.fileExists(atPath: wd) {
            try! FileManager.default.removeItem(atPath: wd)
        }
        try! FileManager.default.createDirectory(atPath: wd, withIntermediateDirectories: true)
        
        let task = Process()
//        task.environment = [
//            "GIT_SSH_COMMAND": String(format: "/usr/bin/ssh -i %@", key)
//        ]
        task.executableURL = URL(string: "file:///bin/bash")
        task.arguments = [
            "-c",
            String(format: "cd %@\n /usr/bin/git init\n", wd)
        ]
        task.launch()
        task.waitUntilExit()
        let status = task.terminationStatus
        guard status == 0 else {
            print(task.terminationReason)
            return false
        }
        return true
    }
    
    class func commitAndPush(wd: String,repo: String, key: String) {
        let task = Process()
        task.environment = [
            "GIT_SSH_COMMAND": String(format: "/usr/bin/ssh -i %@", key)
        ]
        task.executableURL = URL(string: "file:///bin/bash")
        task.arguments = [
            "-c",
            String(format: """
/usr/bin/cd %@
/usr/bin/git add --all
/usr/bin/git commit -m 
""", wd)
        ]
        task.launch()
        task.waitUntilExit()
    }
}


