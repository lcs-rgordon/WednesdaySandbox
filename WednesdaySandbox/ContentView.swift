//
//  ContentView.swift
//  WednesdaySandbox
//
//  Created by Russell Gordon on 2021-08-04.
//

import SwiftUI

struct ContentView: View {
    
    @State private var search = ""
    let myData = ["actor", "class", "enum", "struct"]
    
    var filteredData: [String] {
        if search.isEmpty {
            return myData
        } else {
            return myData.filter({ item in
                item.localizedCaseInsensitiveContains(search)
            })
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredData, id: \.self) { item in
                Text(item)
            }
            .searchable(text: $search, prompt: "Filter results") {
                ForEach(filteredData, id: \.self) { item in
                    Text("Select \(item)").searchCompletion(item) // .searchCompletion adds whatever you pass in when the user taps
                }
            }
            .navigationTitle("Search example")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
