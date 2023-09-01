//
//  istockappApp.swift
//  istockapp
//
//  Created by Rafael Santiago Moreno Velasquez on 30/08/23.
//

import SwiftUI

@main
struct istockappApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
