//
//  Color.swift
//  SwiftfulCrypto
//
//  Created by Lukasz Birski on 01/11/2026.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("Green")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}
