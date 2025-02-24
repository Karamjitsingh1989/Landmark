//
//  ModelData.swift
//  Landmark
//
//  Created by Karamjit Singh on 17/02/25.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    var profile = Profile.default
    
    var features: [Landmark] {
        landmarks.filter{ $0.isFeatured }
    }
    
    var categories : [String: [Landmark]] {
        Dictionary (
            grouping:landmarks, by: { $0.category }
        )
    }
}

func load<T:Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename).json")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename).json")
    }
    
    do {
        let model = try JSONDecoder().decode(T.self, from: data)
        return model
    } catch {
        fatalError("Could not decode \(filename).json")
    }
}
