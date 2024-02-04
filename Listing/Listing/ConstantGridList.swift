//
//  ConstantGridList.swift
//  Listing
//
//  Created by Yavuz Kaan Akyüz on 4.02.2024.
//

import SwiftUI

struct ConstantGridList: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [
            
                GridItem(.flexible()),
                GridItem(.flexible())
            
            ], spacing: 20) {
                GridItemTemplate(name: "Sun", picture: "sun.max")
                GridItemTemplate(name: "Moon", picture: "moon")
                GridItemTemplate(name: "Star", picture: "star")
                
                
            }
        }
        .padding(20)
    }
}


struct GridItemTemplate: View {
    var name: String
    var picture: String
    var body: some View {
        VStack {
            Image(systemName: picture)
            Text(name)
        }
        .frame(width: 100, height: 100)
        .border(.gray)
    }
}

#Preview {
    ConstantGridList()
}
