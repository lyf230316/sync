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
        getServiceName()
        // Do any additional setup after loading the view.
    }
    
    func getServiceName() {
        let tfCtl = NSStoryboard(name: "Main", bundle: nil).instantiateController(withIdentifier: "OneTextFieldController") as! OneTextFieldController
        tfCtl.title = "ServiceName"
        tfCtl.message = "ServiceName: "
        tfCtl.contentTxt = "com.caidev.EService"
        tfCtl.btnBlock = {[weak self] ctl, sure in
            guard let self = self else {
                return
            }
            if (sure) {
                self.serviceName = ctl.contentTxt
                self.loadContent()
            } else {
                NSApp.terminate(self)
            }
        }
        embed(tfCtl)
    }
    
    func loadContent() {
        XpcClient.share.connectService(name: self.serviceName)
        if let ctl = NSStoryboard(name: "Main", bundle: nil).instantiateController(withIdentifier: "ContentController") as? ContentController {
            self.presentAsModalWindow(ctl)
        }
    }
    
}

