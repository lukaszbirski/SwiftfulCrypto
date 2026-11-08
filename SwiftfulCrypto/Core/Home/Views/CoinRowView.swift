//
//  CoinRowView.swift
//  SwiftfulCrypto
//
//  Created by Lukasz Birski on 02/11/2026.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    let showHoldingsColumn: Bool
    
    private var priceChangeColor: Color {
        (coin.priceChangePercentage ?? 0) >= 0 ? Color.theme.green : Color.theme.red
    }
    
    var body: some View {
        HStack(spacing: 0) {
            Text(coin.rank.asNumberString())
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            Circle()
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accent)
            Spacer()
            if (showHoldingsColumn) {
                VStack(alignment: .trailing) {
                    Text(coin.currenyHoldingsValue.asCurrencyWith6Decimals())
                    Text(coin.currentHoldings?.asNumberString() ?? "")
                }
                .foregroundColor(Color.theme.accent)
            }
            VStack(alignment: .trailing) {
                Text(coin.currentPrice.asCurrencyWith6Decimals())
                    .bold()
                    .foregroundColor(Color.theme.accent)
                Text(coin.priceChangePercentage?.asPercentString() ?? "")
                    .foregroundColor(priceChangeColor)
            }
            .containerRelativeFrame(.horizontal) { width, _ in
                width / 3.5
            }
        }
        .font(.subheadline)
    }
}

#Preview {
    CoinRowView(coin: dev.coin, showHoldingsColumn: true)
}
