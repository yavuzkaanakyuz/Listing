//
//  SearchPage.swift
//  Listing
//
//  Created by Yavuz Kaan Akyüz on 3.02.2024.
//

import SwiftUI

struct SearchPage: View {
    @State private var searchWord = ""
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("Search")
            .searchable(text: $searchWord, prompt: "Search")
            .onChange(of: searchWord) {s in
                print(/*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/)
                
            }
        }
    }
}

#Preview {
    SearchPage()
}
