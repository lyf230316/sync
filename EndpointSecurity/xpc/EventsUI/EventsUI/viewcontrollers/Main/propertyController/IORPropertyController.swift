//
//  IORPropertyController.swift
//  HRSword
//
//  Created by app on 2020/10/20.
//  Copyright © 2020 cn.huorong. All rights reserved.
//

import Foundation
import AppKit

class IORPropertyController : NSViewController {

    let scrollView = NSScrollView()
    let outlineView = NSOutlineView()
    let treeController = NSTreeController()
    @objc dynamic var contents : [AnyObject] = []
    var notifications : [NSObjectProtocol] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
        treeController.childrenKeyPath = "children"
        treeController.leafKeyPath = "leaf"
//        treeController.objectClass = IONode.self
        treeController.bind(NSBindingName("contentArray"), to: self, withKeyPath: "contents", options: nil)
        treeController.sortDescriptors = [NSSortDescriptor(key: "key", ascending: true)]
        outlineView.bind(NSBindingName("content"), to: treeController, withKeyPath: "arrangedObjects", options: nil)
        outlineView.bind(NSBindingName("selectionIndexPaths"), to: treeController, withKeyPath: "selectionIndexPaths", options: nil)
        outlineView.autosaveExpandedItems = false
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        if let column = outlineView.tableColumns.first {
            if column.width <= column.minWidth {
                column.width = 250
            }
        }
    }
    
    deinit {
        for ntf in notifications {
            NotificationCenter.default.removeObserver(ntf)
        }
        notifications.removeAll()
    }

    func loadToObejct(dic:[AnyHashable:Any]) -> [PropertyNode] {
        var res : [PropertyNode] = []
        for (key,value) in dic {
            let node = PropertyNode(key: key, value: value)
            if let value = value as? [Any] {
                node.children = loadToObjectArray(arr: value)
            }else if let value = value as? [AnyHashable:Any] {
                node.children = loadToObejct(dic: value)
            }
            node.updateLeaf()
            res.append(node)
        }
        return res
    }
    
    func loadToObjectArray(arr:[Any]) -> [PropertyNode] {
        var res : [PropertyNode] = []
        for index in 0 ..< arr.count {
            let value = arr[index]
            let node = PropertyNode(key: index,value: value)
            if let value = value as? [Any] {
                node.children = loadToObjectArray(arr: value)
            }else if let value = value as? [AnyHashable:Any] {
                node.children = loadToObejct(dic: value)
            }
            node.updateLeaf()
            res.append(node)
        }
        return res
    }
}


extension IORPropertyController {
    private func createUI() {
        scrollView.documentView = outlineView
        scrollView.hasVerticalScroller = true
        scrollView.hasHorizontalScroller = true
        scrollView.autohidesScrollers = true
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        outlineView.delegate = self
        outlineView.usesAlternatingRowBackgroundColors = true
        
        var column = NSTableColumn(identifier: NSUserInterfaceItemIdentifier("Property"))
        column.title = "Property"
        column.width = 250
        outlineView.addTableColumn(column)
        outlineView.outlineTableColumn = column
        
        column = NSTableColumn(identifier: NSUserInterfaceItemIdentifier("Type"))
        column.title = "Type"
        column.width = 80
        outlineView.addTableColumn(column)
        
        column = NSTableColumn(identifier: NSUserInterfaceItemIdentifier("Value"))
        column.title = "Value"
//        column.minWidth = NSTableColumn.titleWidth(title: column.title)
        outlineView.addTableColumn(column)
    }
}

extension IORPropertyController {
    class func node(from item: Any) -> PropertyNode? {
        if let treeNode = item as? NSTreeNode, let node = treeNode.representedObject as? PropertyNode {
            return node
        } else {
            return nil
        }
    }
}

extension IORPropertyController :NSOutlineViewDelegate {
    func outlineViewColumnDidResize(_ notification: Notification) {
        if let view = notification.object as? NSOutlineView, view === self.outlineView {
            if let dic = notification.userInfo,
               let column = dic["NSTableColumn"] as? NSTableColumn,
               let old = dic["NSOldWidth"] as? CGFloat,
                column.identifier.rawValue == "Value" && old != column.width {
                DispatchQueue.main.async {[weak self] in
                    guard let self = self else { return }
                    self.outlineView.reloadData()
                }
            }
        }
    }
    
    func outlineView(_ outlineView: NSOutlineView, heightOfRowByItem item: Any) -> CGFloat {
        guard let item = Self.node(from: item) else {
            return outlineView.rowHeight
        }
        let column = outlineView.tableColumn(withIdentifier: NSUserInterfaceItemIdentifier("Value"))!
        let tf = NSTextField()
        tf.isBordered = false
        tf.drawsBackground = false
        tf.isEditable = false
        tf.isSelectable = false
        tf.maximumNumberOfLines = 0
        let space = 20
        if item.type == .data && item.dataString == nil , let dataDes = item.dataDes {
            tf.font = NSFont(name: "menlo", size: 12)
            tf.stringValue = dataDes
            if let height = tf.cell?.cellSize(forBounds: NSRect(x: 0, y: 0, width: column.width - CGFloat(space), height: CGFloat(MAXFLOAT))).height {
                if height > outlineView.rowHeight {
                    return aligent(height + 10)
                }
            }
        }
        else if item.type == .data && item.dataString != nil,let str = item.dataString {
            tf.stringValue = str
            if let height = tf.cell?.cellSize(forBounds: NSRect(x: 0, y: 0, width: column.width - CGFloat(space), height: CGFloat(MAXFLOAT))).height {
                if height > outlineView.rowHeight {
                    return aligent(height + 10)
                }
            }
        }else if item.type == .string , let str = item.value as? String {
            tf.stringValue = str
            if let height = tf.cell?.cellSize(forBounds: NSRect(x: 0, y: 0, width: column.width - CGFloat(space), height: CGFloat(MAXFLOAT))).height {
                if height > outlineView.rowHeight {
                    return aligent(height + 10)
                }
            }
        }
        return outlineView.rowHeight
    }
    
    func aligent(_ rorh : CGFloat) -> CGFloat {
        let rowHeight = outlineView.rowHeight + outlineView.intercellSpacing.height
        var n = Int(rorh / rowHeight)
        if rorh > rowHeight * CGFloat(n) {
            n = n + 1
        }
        let height = rowHeight * CGFloat(n) - outlineView.intercellSpacing.height
        return height
    }
    
    func outlineView(_ outlineView: NSOutlineView, viewFor tableColumn: NSTableColumn?, item: Any) -> NSView? {
        guard let item = Self.node(from: item) ,
              let column = tableColumn else {
            return nil
        }
        var view : NSTableCellView
        if column.identifier.rawValue == "Value" && item.type == .data && item.dataString == nil {
            let identifier = NSUserInterfaceItemIdentifier(column.identifier.rawValue + String(item.type.rawValue))
            if let cell = outlineView.makeView(withIdentifier: identifier, owner: nil) as? PropertyDataCell  {
                view = cell
            }else{
                let ncell = PropertyDataCell()
                view = ncell
                view.identifier = identifier
            }
        }else{
            if let cell = outlineView.makeView(withIdentifier: column.identifier, owner: nil) as? PropertyCell {
                view = cell
            }else{
                let ncell = PropertyCell()
                view = ncell
                view.identifier = column.identifier
                
                if column.identifier.rawValue == "Property" {
                    ncell.textField?.maximumNumberOfLines = 1
                    ncell.textField?.lineBreakMode = .byTruncatingTail
                }else{
                }
            }
        }
        
        if column.identifier.rawValue == "Property" {
            let view = view as! PropertyCell
            view.text = item.key
        }else if column.identifier.rawValue == "Type" {
            let view = view as! PropertyCell
            view.text = item.type.description()
        }else if column.identifier.rawValue == "Value" {
            if item.type == .array || item.type == .dictionary {
                let view = view as! PropertyCell
                let p = item.children.count == 1 ? "item" : "items"
                view.text = "\(item.children.count) \(p)"
            }
            else{
                if let value = item.value {
                    if let value = value as? Bool {
                        let view = view as! PropertyCell
                        view.text = value ? "true" : "false"
                    }else if let value = value as? Data {
                        if let str = item.dataString {
                            let view = view as! PropertyCell
                            view.text = str
                        }else{
                            let view = view as! PropertyDataCell
                            view.text = item.dataDes ?? value.description
                        }
                    }
                    else{
                        let view = view as! PropertyCell
                        view.text = "\(value)"
                    }
                }else{
                    let view = view as! PropertyCell
                    view.text = ""
                }
            }
        }
        return view
    }
}

extension IORPropertyController : NSOutlineViewDataSource {
    
}
