//
//  BookImage.swift
//  Group6Proj
//
//  Created by Mendoza, Matthew E on 6/10/22.
//

import SwiftUI

struct BookImage: View {
    var body: some View {
        Image("bookimg")
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct BookImage_Previews: PreviewProvider {
    static var previews: some View {
        BookImage()
    }
}
