//
//  ContentView.swift
//  WednesdaySandbox
//
//  Created by Russell Gordon on 2021-08-04.
//

import SwiftUI

struct ContentView: View {
    
    @State private var search = ""
    
    var body: some View {
        NavigationView {
            Text(search)
                .searchable(text: $search, prompt: "Filter results")
                .navigationTitle("Search example")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
