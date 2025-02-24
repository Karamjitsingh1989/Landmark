//
//  MapView.swift
//  Landmark
//
//  Created by Karamjit Singh on 17/02/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    let location: CLLocationCoordinate2D
    
    var body: some View {
        Map(initialPosition:.region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    MapView(location: ModelData().landmarks[0].location)
}
