//
//  CoinModel+Preview.swift
//  SwiftfulCrypto
//
//  Created by Lukasz Birski on 04/11/2026.
//

import Foundation

extension CoinModel {
    
    static let coin = CoinModel(
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png",
        currentPrice: 61408,
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
    
    static let coinNegative = CoinModel(
        id: "ethereum",
        symbol: "eth",
        name: "Ethereum",
        image: "https://assets.coingecko.com/coins/images/279/large/ethereum.png",
        currentPrice: 2412.55,
        prices: HistoricPrices(price: [2510.1, 2488.7, 2465.3, 2440.9, 2412.55]),
        priceChangePercentage: -2.31,
        lastUpdated: "2026-11-04T12:00:00.000Z",
        currentHoldings: nil
    )
    
    static let previewList: [CoinModel] = [coin, coinNegative]
}
