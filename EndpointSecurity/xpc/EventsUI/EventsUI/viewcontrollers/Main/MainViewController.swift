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
        let controller = NSStoryboard(name: "Main", bundle: nil).instantiateController(withIdentifier: "OneTextFieldController") as! OneTextFieldController
        controller.title = "ServiceName"
        controller.message = "Name: "
        controller.btnBlock = {[weak self] ctl, sure in
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
        embed(controller)
    }
    
    func loadContent() {
        
    }
    
}

