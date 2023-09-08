//
//  LandmarkList.swift
//  CS4540Proj
//
//  Created by Matthew Mendoza on 6/17/22.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = true
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {
            landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favorites Only")
                }
                ForEach(filteredLandmarks) {
                    landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
