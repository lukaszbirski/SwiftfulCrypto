//
//  Double.swift
//  SwiftfulCrypto
//
//  Created by Lukasz Birski on 04/11/2026.
//
import Foundation

extension Double {
    
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func asCurrencyWith2Decimals() -> String {
        let numer = NSNumber(value: self)
        return currencyFormatter2.string(from: numer) ?? "$0.00"
    }
    
    func asCurrencyWith6Decimals() -> String {
        let numer = NSNumber(value: self)
        return currencyFormatter.string(from: numer) ?? "$0.00"
    }
    
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}
