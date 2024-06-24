//
//  Persistence.swift
//  LittleLemon
//
//  Created by Juan Manuel Ordoñez on 23/06/24.
//

import CoreData
import Foundation

struct PersistenceController {
    static let shared = PersistenceController()


    let container: NSPersistentContainer

    init() {
        container = NSPersistentContainer(name: "ExampleDatabase")
        container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        container.loadPersistentStores(completionHandler: {_,_ in})
    }
      
}
