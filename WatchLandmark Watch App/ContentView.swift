//
//  ContentView.swift
//  WatchLandmark Watch App
//
//  Created by Karamjit Singh on 21/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
