//
//  ContentController.swift
//  EventsUI
//
//  Created by msi on 2023/10/8.
//

import Cocoa

class ContentController: NSViewController {
    
    private let scrollView = NSScrollView()
    private let tableView = NSTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
        // Do view setup here.
    }
    
    private func createUI() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.columnAutoresizingStyle = .noColumnAutoresizing
        tableView.usesAlternatingRowBackgroundColors = true
        scrollView.documentView = tableView
        scrollView.hasVerticalScroller = true
        scrollView.hasHorizontalScroller = true
        scrollView.autohidesScrollers = true
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        let column = NSTableColumn(identifier: NSUserInterfaceItemIdentifier("id"))
        column.title = "t"
        column.width = 100
        tableView.addTableColumn(column)
    }
}

extension ContentController: NSTableViewDelegate {
    
}

extension ContentController: NSTableViewDataSource {
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 100
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
        return "absc"
    }
}
