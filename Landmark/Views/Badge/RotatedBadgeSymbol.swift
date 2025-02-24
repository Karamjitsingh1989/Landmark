//
//  RotatedBadgeSymbol.swift
//  Landmark
//
//  Created by Karamjit Singh on 19/02/25.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    let angle: Angle
    
    var body: some View {
        BadgeSymbol().padding(-60).rotationEffect(angle, anchor: .bottom)
        
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
