//
//  ProfileSummary.swift
//  Landmark
//
//  Created by Karamjit Singh on 19/02/25.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username.capitalized)
                    .bold()
                    .font(.title)
                Text("Notifications \(profile.prefersNotifications)")
                Text("Seasonal Photos \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                PhoneDetail()
                Divider()
                VStack(alignment: .leading) {
                    Text("Completed Badge").font(.headline)
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day").hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike").grayscale(0.5).hueRotation(Angle(degrees: 45))
                        }
                    }.padding(.bottom)
                }
                Divider()
                VStack(alignment: .leading) {
                    Text("Recent Hikes").font(.headline)
                    HikeView(hike: modelData.hikes[0])
                }
            }.padding()
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default).environment(ModelData())
}

