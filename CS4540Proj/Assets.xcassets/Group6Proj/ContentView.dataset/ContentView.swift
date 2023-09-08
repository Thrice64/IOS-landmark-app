//
//  ContentView.swift
//  Group6Proj
//
//  Created by Mendoza, Matthew E on 6/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BookImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Harry Potter and the Sorcerer's Stone")
                    .font(.title)
                HStack {
                    Text("J.K. Rowling")
                    Spacer()
                    Text("$19.99")
                }
                .font(.subheadline)
            
                Divider()
                    .foregroundColor(.blue)
            
                Text("About Harry Potter and the Sorcerer's Stone")
                    .font(.title2)
                Text("An orphaned boy enrolls in a school of wisardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
