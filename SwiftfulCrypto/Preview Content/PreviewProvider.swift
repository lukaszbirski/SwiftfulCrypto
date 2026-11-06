//
//  PreviewProvider.swift
//  SwiftfulCrypto
//
//  Created by Lukasz Birski on 05/11/2026.
//

import Foundation

@MainActor let dev = DeveloperPreview.instance

@MainActor
final class DeveloperPreview {
    static let instance = DeveloperPreview()
    private init() {}
    
    let homeViewModel = HomeViewModel()
    
    let coin = CoinModel(
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png",
        currentPrice: 61408,
        marketCapRank: 1,
        prices: HistoricPrices(price: [
            57812.96915967891,
            57504.33531773738,
            57700.59224193852,
            58224.13098811592,
            59013.88271415606,
            60145.42316238947,
            61408.0
        ]),
        priceChangePercentage: 3.952060261099695,
        lastUpdated: "2026-11-04T12:00:00.000Z",
        currentHoldings: 1.5
    )
}
