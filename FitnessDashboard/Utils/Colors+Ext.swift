//
//  Colors+Ext.swift
//  FitnessDashboard
//
//  Created by Serhan Khan on 22/08/2024.
//

import SwiftUI

// Color Palette Extensions
extension Color {
    static let primaryBlue = Color(hex: "#61C2DB")
    static let accentCyan = Color(hex: "#76E4F7")
    static let darkBackground = Color(hex: "#1A1A1A")
    static let lightGray = Color(hex: "#D4D4D4")
    static let redAccent = Color(hex: "#F75C5C")
    static let softWhite = Color(hex: "#EDEDED")
    static let mutedTeal = Color(hex: "#2BA3A3")
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
