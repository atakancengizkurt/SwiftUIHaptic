//
//  ContentView.swift
//  Haptic
//
//  Created by Atakan Cengiz KURT on 29.01.2024.
//

import SwiftUI

struct ContentView: View {
 @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            UIFeedbackGeneretor()
                .tabItem {
                    Label("UIKit", systemImage: "1.circle")
                }
                .tag(0)
            SensoryFeedback()
                .tabItem {
                    Label("SwiftUI", systemImage: "2.circle")
                }
                .tag(1)
        }
    }
}

#Preview {
    ContentView()
}
