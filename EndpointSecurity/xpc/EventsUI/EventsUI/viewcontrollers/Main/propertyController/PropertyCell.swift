//
//  PropertyCell.swift
//  HRSword
//
//  Created by app on 2020/10/20.
//  Copyright © 2020 cn.huorong. All rights reserved.
//

import Foundation
import AppKit

class PropertyCell : NSTableCellView {
//    var offset : CGFloat = 0 {
//        didSet {
//            textField?.snp.updateConstraints({ (m) in
//                m.left.equalToSuperview().offset(offset).priority(.high)
//                m.right.equalToSuperview().offset(-offset).priority(.high)
//            })
//        }
//    }
    
    @objc dynamic var text : String = "" {
        didSet{
            self.textField?.stringValue = text
        }
    }
    
    init() {
        super.init(frame: NSZeroRect)
        createUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        createUI()
    }
    
    deinit {
        self.unbind(NSBindingName("text"))
        textField?.unbind(NSBindingName("value"))
    }

    func createUI() {
        let textField = NSTextField()
        textField.isBordered = false
        textField.drawsBackground = false
        textField.isEditable = false
        textField.isSelectable = false
        textField.maximumNumberOfLines = 0
        
        self.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
        addSubview(textField)
        
        self.textField = textField
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        textField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        textField.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        textField.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        textField.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
    }
}
