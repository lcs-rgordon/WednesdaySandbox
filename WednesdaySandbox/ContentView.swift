//
//  ContentView.swift
//  WednesdaySandbox
//
//  Created by Russell Gordon on 2021-08-04.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "square.stack.3d.up.fill")
                .symbolRenderingMode(.hierarchical)
                .font(.system(size: 120))
            
            Image(systemName: "person.3.fill")
                .symbolRenderingMode(.hierarchical)
                .font(.system(size: 120))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
