//
//  LandmarkDetails.swift
//  WatchLandmark Watch App
//
//  Created by Karamjit Singh on 21/02/25.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @Environment(ModelData.self) var modelData
    
    var landmark: Landmark
    
    var landmarkIndex : Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id }) ?? 0
    }
    
    
    var body: some View {
        @Bindable var modelData = modelData
        ScrollView {
            VStack {
                CircularImage(image: landmark.image.resizable()).scaledToFill()
                Text(landmark.name).font(.headline).lineLimit(0)
                Toggle(isOn: $modelData.landmarks[landmarkIndex].isFavorite) {
                    Text("Favorite")
                }
                Divider()
                Text(landmark.park)
                    .font(.caption)
                    .bold()
                    .lineLimit(0)
                Text(landmark.state)
                    .font(.caption)
                    .lineLimit(0)
                Divider()
                MapView(location: landmark.location).scaledToFit()
            }.padding(10)
        }.navigationTitle("Landmark")
    }
}

#Preview {
    LandmarkDetail( landmark: ModelData().landmarks[0]).environment(ModelData())
}
