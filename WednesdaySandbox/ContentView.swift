//
//  ContentView.swift
//  WednesdaySandbox
//
//  Created by Russell Gordon on 2021-08-04.
//

import SwiftUI

struct ContentView: View {
    
    @State private var phoneNumber = ""
    
    @FocusState private var numberIsFocused: Bool
    
    var body: some View {
        TextField("Enter your phone number", text: $phoneNumber)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.numberPad)
            .focused($numberIsFocused)
        
        Button("Submit") {
            numberIsFocused = false
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
