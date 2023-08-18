//
//  Badge.swift
//  Landmarks
//
//  Created by Ryan Hu on 2023-08-17.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols : some View {
        ForEach(0..<8) { index in
            RotatedBadgeView(
                angle: Angle(degrees: Double(index) * 45)
            )
                .opacity(0.8)
        }
        

    }
    
    
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                
                badgeSymbols
                    .scaleEffect(1 / 4, anchor: .top)
                    .position(x: geometry.size.width / 2, y: 3 / 4 * geometry.size.height)
            }
            
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
