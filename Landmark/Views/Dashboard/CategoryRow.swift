//
//  CategoryRow.swift
//  Landmark
//
//  Created by Karamjit Singh on 19/02/25.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var items : [Landmark]
    var body: some View {
    
        VStack(alignment: .leading) {
           
            Text(categoryName)
                .font(.headline).padding(.leading, 15).padding(.top, 5)
           
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing:0) {
                    ForEach(items) { item in
                        NavigationLink {
                            LandmarkDetail(landmark: item)
                        } label: {
                            CategoryItem(landmark: item)
                        }
                      
                    }
                }
            }.frame(height: 185)
        }
        
    }
}

#Preview {
    
    let landmark = ModelData().landmarks
    CategoryRow(categoryName: landmark[0].category, items: Array(landmark.prefix(3)))
}
