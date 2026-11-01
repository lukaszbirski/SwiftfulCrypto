//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by Lukasz Birski on 01/11/2026.
//

import SwiftUI
import CoreData

@main
struct SwiftfulCryptoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
