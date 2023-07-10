//
//  ViewController.swift
//  appKey
//
//  Created by lyf on 2023/7/6.
//

import Cocoa
import Carbon

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var spec = EventTypeSpec()
        InstallEventHandler(GetApplicationEventTarget(), { handle, event, userData in
            var hkCom = EventHotKeyID()
            return GetEventParameter(event, EventParamName(kEventParamDirectObject), EventParamType(typeEventHotKeyID), nil, MemoryLayout<EventTypeSpec>.size, nil, &hkCom);
            
            
        }, 1, &spec, nil, nil)
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

