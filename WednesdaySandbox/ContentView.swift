//
//  ContentView.swift
//  WednesdaySandbox
//
//  Created by Russell Gordon on 2021-08-04.
//

import SwiftUI

struct ContentView: View {
    
    enum Field {
        case firstName
        case lastName
    }
    
    @State private var firstName = ""
    @State private var lastName = ""
    
    // Might first name, might be last name, might be neither (nil)
    @FocusState private var focusedField: Field?

    var body: some View {
        VStack {
            TextField("First name", text: $firstName)
                .focused($focusedField, equals: .firstName)
                .textContentType(.givenName)
                .submitLabel(.next)
            
            TextField("Last name", text: $lastName)
                .focused($focusedField, equals: .lastName)
                .textContentType(.familyName)
                .submitLabel(.done)
            
        }
        .onSubmit {
            switch focusedField {
            case .firstName:
                focusedField = .lastName    // Transfer focus to the last name field
            default:
                focusedField = nil  // All done, so go to no field next, and hide the keyboard
            }
        }
        .task {
            print("hello")
            focusedField = .firstName
        }
        // Dismiss the keyboard when something else is tapped
        .onTapGesture {
            focusedField = nil
        }

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
