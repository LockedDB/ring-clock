//
//  ring_clockApp.swift
//  ring-clock
//
//  Created by Dani Benet on 8/9/23.
//

import SwiftUI

@main
struct ring_clockApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
