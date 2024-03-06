//
//  EmbedViewController.swift
//  EventsUI
//
//  Created by lyf on 2023/10/8.
//

import Cocoa
import AppKit

public class EmbedViewController: NSViewController {
    public weak var embedController: NSViewController? = nil
    
    @discardableResult
    public func embed(_ controller: NSViewController, options: NSViewController.TransitionOptions = [], completion: (() -> Void)? = nil) -> Bool {
        let container = view
        if let embedController = embedController {
            addChild(controller)
            transition(from: embedController, to: controller, options: options) {[weak self] in
                guard let self = self else {
                    return
                }
                controller.view.translatesAutoresizingMaskIntoConstraints = false
                controller.view.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
                controller.view.leftAnchor.constraint(equalTo: container.leftAnchor).isActive = true
                controller.view.bottomAnchor.constraint(equalTo: container.bottomAnchor).isActive = true
                controller.view.rightAnchor.constraint(equalTo: container.rightAnchor).isActive = true
                embedController.removeFromParent()
                self.embedController = controller
                if let completion = completion {
                    completion()
                }
            }
        } else {
            addChild(controller)
            container.addSubview(controller.view)
            controller.view.translatesAutoresizingMaskIntoConstraints = false
            controller.view.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
            controller.view.leftAnchor.constraint(equalTo: container.leftAnchor).isActive = true
            controller.view.bottomAnchor.constraint(equalTo: container.bottomAnchor).isActive = true
            controller.view.rightAnchor.constraint(equalTo: container.rightAnchor).isActive = true
            embedController = controller
        }
        return true
    }
}
