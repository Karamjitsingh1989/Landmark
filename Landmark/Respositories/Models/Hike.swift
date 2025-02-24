//
//  Hike.swift
//  Landmark
//
//  Created by Karamjit Singh on 19/02/25.
//
import Foundation


struct Hike: Codable, Hashable,  Identifiable {
    
    let name: String
    let id: Int
    let distance: Double
    let difficulty: Int
    let observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation: Codable, Hashable {
        let elevation: Range<Double>
        let pace: Range<Double>
        let heartRate: Range<Double>
        let distanceFromStart: Double
    }
}

