//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ryan Hu on 2023-08-10.
//

import SwiftUI

@main
struct LandmarksApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(modelData)
        }
    }
}
