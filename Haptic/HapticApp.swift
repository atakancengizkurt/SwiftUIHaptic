//
//  HapticApp.swift
//  Haptic
//
//  Created by Atakan Cengiz KURT on 29.01.2024.
//

import SwiftUI

@main
struct HapticApp: App {
    
    init() {
        let appearence = UINavigationBarAppearance()
        appearence.configureWithOpaqueBackground()
        UINavigationBar.appearance().standardAppearance = appearence
        UINavigationBar.appearance().scrollEdgeAppearance = appearence
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
