//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Karamjit Singh on 17/02/25.
//

import SwiftUI

@main
struct MainApp: App {
   
    @State private var modelData = ModelData()
   
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
