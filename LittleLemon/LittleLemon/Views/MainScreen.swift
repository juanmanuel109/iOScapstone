//
//  8.swift
//  LittleLemon
//
//  Created by Juan Manuel Ordoñez on 23/06/24.
//

import SwiftUI
struct MainScreen: View {
    @Environment(\.managedObjectContext) private var viewContext
    var body: some View {
        NavigationStack{
            VStack{
                Header()
                Menu()
            }
        }
    }
}


struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
    }
}

