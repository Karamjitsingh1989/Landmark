//
//  ProfileHost.swift
//  Landmark
//
//  Created by Karamjit Singh on 19/02/25.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                
                
                Spacer()
                Button {
                    if editMode?.wrappedValue == .inactive {
                        editMode?.wrappedValue = .active
                    } else {
                        editMode?.wrappedValue = .inactive
                    }
                }
                label: {
                    Text("Edit")
                }
                
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile).onAppear {
                    draftProfile = modelData.profile
                } .onDisappear {
                    modelData.profile = draftProfile
                }
            }
           
        }.padding()
       
    }
}

#Preview {
    ProfileHost().environment(ModelData())
}
