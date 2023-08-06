//
//  Storage.swift
//  HashStorage
//
//  Created by msi on 2023/7/27.
//

import Foundation



class Storage {
    static let share = Storage()
    private var tasks: [BlockTask] = []
    
    init() {
        DispatchQueue.global().async {
            while true {
                var sem = DispatchSemaphore(value: 0)
                var t: BlockTask? = nil
                objc_sync_enter(self.tasks)
                t = self.tasks.popLast()
                objc_sync_exit(self.tasks)
                sem.wait()
                if let t = t {
                    let res = Self.upload(wd: t.workDir, file: t.file, keyPath: t.keyPath, repo: t.repo, branch: t.branch, commit: t.commit)
                    if !res {
                        //需要解决问题
                        abort()
                    } else {
                        if let blk = t.cblk {
                            blk(t)
                        }
                    }
                } else {
                    Thread.sleep(forTimeInterval: 1.0)
                }
            }
        }
    }
}

extension Storage {
    class BlockTask {
        var workDir: String
        var file: String
        var keyPath: String
        var repo: String
        var branch: String
        var commit: String
        var cblk: ((BlockTask) -> Void)?
        
        init(workDir: String, file: String, keyPath: String, repo: String, branch: String, commit: String, cblk: ((BlockTask) -> Void)? = nil) {
            self.workDir = workDir
            self.file = file
            self.keyPath = keyPath
            self.repo = repo
            self.branch = branch
            self.commit = commit
            self.cblk = cblk
        }
    }
}

extension Storage {
    func add(_ task: BlockTask) {
        objc_sync_enter(tasks)
        tasks.append(task)
        objc_sync_exit(tasks)
    }
}

extension Storage {
    public static func upload(wd:String, file: String,keyPath: String,repo:String,branch:String,commit: String) -> Bool {
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
        task.environment = [
            "$PATH": "/Users/msi/radioconda/bin /Users/msi/radioconda/condabin /usr/local/go/bin /Users/msi/.cargo/bin /usr/local/bin /System/Cryptexes/App/usr/bin /usr/bin /bin /usr/sbin /sbin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin /Library/Apple/usr/bin /Applications/VMware Fusion.app/Contents/Public"
        ]
        task.executableURL = URL(string: "file:///bin/bash")
        let shell = String(format: """
cd %@
git init
""", wd)
        task.arguments = [
            "-c",
            shell
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
    
    public static func commitAndPush(wd: String,repo: String, keyPath: String, branch:String, commit:String) -> Bool {
        let task = Process()
        task.environment = [
            "$PATH": "/Users/msi/radioconda/bin /Users/msi/radioconda/condabin /usr/local/go/bin /Users/msi/.cargo/bin /usr/local/bin /System/Cryptexes/App/usr/bin /usr/bin /bin /usr/sbin /sbin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin /Library/Apple/usr/bin /Applications/VMware Fusion.app/Contents/Public",
            "GIT_SSH_COMMAND": String(format: "/usr/bin/ssh -i %@", keyPath)
        ]
        task.executableURL = URL(string: "file:///bin/bash")
        let shell = String(format: """
cd %@
git add --all
git commit -m "%@"
git  branch -M "%@"
git remote add origin "%@"
git push -u origin "%@"
""", wd,commit, branch, repo, branch)
        task.arguments = [
            "-c",
            shell
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


