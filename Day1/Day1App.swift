//
//  Day1App.swift
//  Day1
//
//  Created by SotheaMac on 20/1/2564 BE.
//

import SwiftUI

@main
struct Day1App: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
