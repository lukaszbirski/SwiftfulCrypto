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

    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
