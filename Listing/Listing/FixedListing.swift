//
//  FixedListing.swift
//  Listing
//
//  Created by Yavuz Kaan Akyüz on 4.02.2024.
//

import SwiftUI

struct FixedListing: View {
    var body: some View {
        List {
            ItemTemplate(name: "Sun", picture: "sun.max")
                .onTapGesture {
                    print("Sun tapped")
                }
            ItemTemplate(name: "Moon", picture: "moon")
                .onTapGesture {
                    print("Moon tapped")
                }
            ItemTemplate(name: "Star", picture: "star")
                .onTapGesture {
                    print("Star tapped")
                }
        }
    }
}

struct ItemTemplate: View {
    var name: String
    var picture: String
    var body: some View {
        HStack {
            Image(systemName: picture)
            Text(name)
        }
    }
}

#Preview {
    FixedListing()
}
