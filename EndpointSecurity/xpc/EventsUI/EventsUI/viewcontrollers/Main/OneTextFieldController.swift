//
//  OneTextFieldController.swift
//  EventsUI
//
//  Created by lyf on 2023/10/8.
//

import Cocoa

class OneTextFieldController: NSViewController {
    public var message: String = ""
    public var contentTxt: String = ""
    public var btnBlock: ((Bool) -> Void)? = nil
    
    @IBOutlet weak var label: NSTextField!
    @IBOutlet weak var tf: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.stringValue = message
        tf.stringValue = contentTxt
        // Do view setup here.
    }
    
    @IBAction func sure(_ sender: NSButton) {
        if let btnBlock = btnBlock {
            btnBlock(true)
        }
    }
    
    @IBAction func cancle(_ sender: NSButton) {
        if let btnBlock = btnBlock {
            btnBlock(false)
        }
    }
    
}
