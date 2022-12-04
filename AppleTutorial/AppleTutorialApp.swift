//
//  AppleTutorialApp.swift
//  AppleTutorial
//
//  Created by Andrii Kyrychenko on 21/11/2022.
//

import SwiftUI

@main
struct AppleTutorialApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
