//
//  HorizontalListing.swift
//  Listing
//
//  Created by Yavuz Kaan Akyüz on 4.02.2024.
//

import SwiftUI

struct HorizontalListing: View {
    var body: some View {
        ScrollView(.horizontal) {
            
             LazyHStack{
                 
                 HorizontalItemTemplate(name: "Sun", picture: "sun.max")
                 HorizontalItemTemplate(name: "Moon", picture: "moon")
                 HorizontalItemTemplate(name: "Star", picture: "star")
                 HorizontalItemTemplate(name: "Sun", picture: "sun.max")
                 HorizontalItemTemplate(name: "Moon", picture: "moon")
                 HorizontalItemTemplate(name: "Star", picture: "star")
                
                
            }
        }
        .padding(20)
    }
}


struct HorizontalItemTemplate: View {
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
    HorizontalListing()
}
