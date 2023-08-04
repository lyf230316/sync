//
//  Storage.swift
//  HashStorage
//
//  Created by msi on 2023/7/27.
//

import Foundation



class Storage {
    public class func upload(wd:String, file: String,keyPath: String,repo:String,branch:String,commit: String) -> Bool {
        guard prepareGitDir(wd: wd) else {
            return false
        }
        let name = (file as NSString).lastPathComponent;
        try! FileManager.default.copyItem(atPath: file, toPath: wd+"/"+name)
        guard commitAndPush(wd: wd, repo: repo, keyPath: keyPath, branch: branch, commit: commit) else {
            return false
        }
        return true
    }
    
    class func prepareGitDir(wd: String) -> Bool {
        if FileManager.default.fileExists(atPath: wd) {
            try! FileManager.default.removeItem(atPath: wd)
        }
        try! FileManager.default.createDirectory(atPath: wd, withIntermediateDirectories: true)
        
        let task = Process()
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
    
    class func commitAndPush(wd: String,repo: String, keyPath: String, branch:String, commit:String) -> Bool {
        let task = Process()
        task.environment = [
            "GIT_SSH_COMMAND": String(format: "/usr/bin/ssh -i %@", keyPath)
        ]
        task.executableURL = URL(string: "file:///bin/bash")
        task.arguments = [
            "-c",
            String(format: """
/usr/bin/cd %@
/usr/bin/git add --all
/usr/bin/git commit -m "%@"
/usr/bin/git  branch -M "%@"
/usr/bin/git remote add origin "%@"
/usr/bin/git push -u origin "%@"
""", wd,commit, branch, repo, branch)
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
}


