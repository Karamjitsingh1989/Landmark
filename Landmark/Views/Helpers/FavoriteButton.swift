//
//  FavoriteButton.swift
//  Landmark
//
//  Created by Karamjit Singh on 19/02/25.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Image(systemName: "star.fill").foregroundColor(isSet ? .yellow: .gray)
        }

    }
}

#Preview {
    FavoriteButton(isSet: .constant(false))
}
