//
//  FavoriteButton.swift
//  CS4540Proj
//
//  Created by Matthew Mendoza on 7/1/22.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Favorite", systemImage:isSet ? "star.fill": "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .green)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
