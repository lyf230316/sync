//
//  ViewController.swift
//  EventsUI
//
//  Created by lyf on 2023/9/8.
//

import Cocoa

class MainViewController: EmbedViewController  {
    private var serviceName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadContent()
        // Do any additional setup after loading the view.
    }
    
    func loadContent() {
        XpcClient.share.connectService(name: self.serviceName)
        if let ctl = NSStoryboard(name: "Main", bundle: nil).instantiateController(withIdentifier: "ContentController") as? ContentController {
            self.presentAsModalWindow(ctl)
        }
    }
    
}

