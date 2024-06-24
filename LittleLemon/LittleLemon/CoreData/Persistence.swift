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
        container = NSPersistentContainer(name: "LittleLemon")
        container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        container.loadPersistentStores(completionHandler: {_,_ in})
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
    func clear() {
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Dish")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        let _ = try? container.persistentStoreCoordinator.execute(deleteRequest, with: container.viewContext)
    }
    
    static func oneDish() -> Dish {
        let dish = Dish(context: shared.container.viewContext)
        
        return dish
    }
}
