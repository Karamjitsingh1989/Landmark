//
//  CategoryHome.swift
//  Landmark
//
//  Created by Karamjit Singh on 19/02/25.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modalData
    @State var showProfile: Bool = false
    
    var body: some View {
        
        NavigationSplitView {
            List {
                modalData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height:200)
                    .listRowInsets(EdgeInsets())
                    .padding(.top, 30)
                
                ForEach(modalData.categories.keys.sorted(), id: \.self) { category in
                    CategoryRow(categoryName: category, items: modalData.categories[category]!)
                }.listRowInsets(EdgeInsets())
            }.listStyle(.inset)
             .navigationTitle("Features")
             .toolbar {
                 Button {
                     showProfile.toggle()
                 } label: {
                     Label("user profile", systemImage: "person.crop.circle")
                 }
             }.sheet(isPresented: $showProfile) {
                 ProfileHost().environment(modalData)
             }
            
        } detail: {
            Text("Select Landmark")
        }
    }
}

#Preview {
    CategoryHome().environment(ModelData())
}

                               
