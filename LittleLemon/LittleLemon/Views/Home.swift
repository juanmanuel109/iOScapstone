//
//  2.swift
//  LittleLemon
//
//  Created by Juan Manuel Ordoñez on 23/06/24.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        MainScreen()
            .navigationBarBackButtonHidden()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
    }
}
