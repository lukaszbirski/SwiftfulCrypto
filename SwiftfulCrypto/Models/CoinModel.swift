//
//  CoinModel.swift
//  SwiftfulCrypto
//
//  Created by Lukasz Birski on 02/11/2026.
//

import Foundation

struct CoinModel: Identifiable, Codable {
    let id: String
    let symbol: String
    let name: String
    let image: String
    let currentPrice: Double
    let marketCapRank: Double?
    let prices: HistoricPrices?
    let priceChangePercentage: Double
    let lastUpdated: String?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case prices = "sparkline_in_7d"
        case marketCapRank = "market_cap_rank"
        case priceChangePercentage = "price_change_percentage_24h_in_currency"
        case lastUpdated = "last_updated"
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(
            id: id,
            symbol: symbol,
            name: name,
            image: image,
            currentPrice: currentPrice,
            marketCapRank: marketCapRank,
            prices: prices,
            priceChangePercentage: priceChangePercentage,
            lastUpdated: lastUpdated,
            currentHoldings: amount,
        )
    }
    
    var currenyHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
}

struct HistoricPrices: Codable {
    let price: [Double]?
}
