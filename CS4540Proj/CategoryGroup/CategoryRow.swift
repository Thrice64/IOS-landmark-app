//
//  CategoryRow.swift
//  CS4540Proj
//
//  Created by Matthew Mendoza on 7/1/22.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 6) {
                    ForEach(items) {
                        Landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: Landmark)
                        } label: {
                            CategoryItem(landmark: Landmark)
                        }
                        
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[2].category.rawValue, items: Array(landmarks.prefix(3))
        )
    }
}
