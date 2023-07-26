//
//  main.swift
//  HashStorage
//
//  Created by msi on 2023/7/26.
//

import Foundation
var fpath = CommandLine.arguments.first! as NSString
let dir = fpath.deletingLastPathComponent
print(CommandLine.arguments)
print(gitShell)
let path = "/Users/msi/Desktop/manjaro-kde-22.0.2-230203-linux61.iso"
let f = HSFile(path: path)
print(f)
