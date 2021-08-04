//
//  ContentView.swift
//  WednesdaySandbox
//
//  Created by Russell Gordon on 2021-08-04.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numbers = [String]()
    
    var body: some View {
        List(0..<numbers.count, id: \.self) { i in
            Text(numbers[i])
        }
        .task(rollDice)
        .refreshable {
            rollDice()
        }
    }
    
    func rollDice() {
        let result = Int.random(in: 1...6)
        numbers.append(String(result))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
