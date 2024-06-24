//
//  LittleLemonApp.swift
//  LittleLemon
//
//  Created by Juan Manuel Ordoñez on 23/06/24.
//

import SwiftUI

@main
struct LittleLemonApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            Onboarding().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

