//
//  CS4540ProjApp.swift
//  CS4540Proj
//
//  Created by Mendoza, Matthew E on 6/3/22.
//

import SwiftUI

@main
struct CS4540ProjApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
