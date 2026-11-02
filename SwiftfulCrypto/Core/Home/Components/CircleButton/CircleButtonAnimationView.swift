//
//  CircleButtonAnimationView.swift
//  SwiftfulCrypto
//
//  Created by Lukasz Birski on 02/11/2026.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .onAppear {
                guard animate else { return }

                withAnimation(.easeOut(duration: 1.0)) {
                    animate = true
                }
            }
    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(false))
}
