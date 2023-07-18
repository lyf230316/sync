//
//  AgentsListView.swift
//  
//
//  Created by msi on 2023/7/18.
//

import Foundation
import SwiftUI

struct AgentsView: View {
    @State var list : [Agents]
    @Binding var splitVisibility = NavigationSplitViewVisibility.automatic
    @State var selected: UUID? = nil
    
    
    var body: some View {
        NavigationSplitView(columnVisibility: &splitVisibility) {
            List(selection: &selected) {
                for item in list {
                    Text(item.name)
                }
            }
        } detail: {
            <#code#>
        }

        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AgentsView(list: [])
    }
}
