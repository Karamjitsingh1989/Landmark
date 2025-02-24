//
//  CircularImage.swift
//  Landmark
//
//  Created by Karamjit Singh on 17/02/25.
//

import SwiftUI

struct CircularImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .clipShape(.circle)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircularImage(image:Image(.charleyrivers))
}
