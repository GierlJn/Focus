//
//  FocusApp.swift
//  Shared
//
//  Created by Julian Gierl on 06.06.22.
//

import SwiftUI
import AppEntry
import Model

@main
struct FocusApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Text("")
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
