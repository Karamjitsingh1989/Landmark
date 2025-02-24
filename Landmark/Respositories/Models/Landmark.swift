//
//  Landmark.swift
//  Landmark
//
//  Created by Karamjit Singh on 17/02/25.
//
import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var state: String
    var park: String
    var description: String
    var isFavorite: Bool
    var category: String
    var isFeatured: Bool
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    private var coordinates: Coordinates
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

    struct Coordinates: Codable, Hashable {
        var latitude: Double
        var longitude: Double
    }
}



