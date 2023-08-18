//
//  RotatedBadgeView.swift
//  Landmarks
//
//  Created by Ryan Hu on 2023-08-17.
//

import SwiftUI

struct RotatedBadgeView: View {
    let angle : Angle
    
    var body: some View {
        BadgeSymbol()
            .rotationEffect(angle, anchor: .bottom)
            .padding(-60)
    }
}

struct RotatedBadgeView_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeView(angle: Angle(degrees: -3))
    }
}
