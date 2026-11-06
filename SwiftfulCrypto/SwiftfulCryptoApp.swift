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

    @StateObject private var homeViewModel = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(homeViewModel)
        }
    }
}
