//
//  MenuItem.swift
//  LittleLemon
//
//  Created by Juan Manuel Ordoñez on 23/06/24.
//

import Foundation
struct MenuItem: Codable, Identifiable {
    var id = UUID()
    let title : String
    let descriptionDish: String
    let price: String
    let image: String
    let category: String
}

