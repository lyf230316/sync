//
//  ViewController.swift
//  CacheWeb
//
//  Created by lyf on 2023/5/11.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    @IBOutlet weak var web: WKWebView!
    @IBOutlet weak var tfd: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.web.load(URLRequest(url: URL(string: "https://ku.baidu-int.com")!))
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

