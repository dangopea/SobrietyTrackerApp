//
//  SobrietyTrackerAppApp.swift
//  SobrietyTrackerApp
//
//  Created by Dhriti on 30/05/2566 BE.
//

import SwiftUI

@main
struct SobrietyTrackerAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
