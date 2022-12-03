//
//  Swift_War_CardApp.swift
//  Swift_War_Card
//
//  Created by Abdulsamet Göçmen on 3.12.2022.
//

import SwiftUI

@main
struct Swift_War_CardApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
