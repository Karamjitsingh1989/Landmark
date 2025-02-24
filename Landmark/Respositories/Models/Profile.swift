//
//  Profile.swift
//  Landmark
//
//  Created by Karamjit Singh on 19/02/25.
//
import Foundation

struct Profile {
    var username: String
    var prefersNotifications = false
    var seasonalPhoto = season.spring
    var goalDate = Date()
    
    static let `default` = Profile(username: "Karamjit Singh")
    
    enum season: String, CaseIterable, Identifiable {
        var id: String { rawValue }
        case spring = "🌷"
        case summer = "🌞"
        case winter = "☃️"
        case autumn = "🍂"
    }
}
