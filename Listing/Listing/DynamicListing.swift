//
//  DynamicListing.swift
//  Listing
//
//  Created by Yavuz Kaan Akyüz on 4.02.2024.
//

import SwiftUI

struct DynamicListing: View {
    @State private var countryList = [Countries]()
    var body: some View {
        NavigationStack {
            List {
                ForEach(countryList) { name in
                    CountryItemTemplate(country: name)
                        .onTapGesture {
                            print("\(name.name!) selected")
                        }
                        .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                            Button("Order") {
                                print("Order tapped")
                            }
                            .tint(.green)
                            Button("Hello") {
                                print("Hello tapped")
                            }
                            .tint(.blue)
                            Button(role: .destructive) {
                                print("Destructive")
                            } label: {
                                Image(systemName: "trash")
                            }
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button("Trailing") {
                                print("Trailing tapped")
                            }
                        }
                    
                }
            }
            .navigationTitle("Countries 📍")
            .onAppear {
                var list = [Countries]()
                let c1 = Countries(name: "Canada")
                let c2 = Countries(name: "Denmark")
                let c3 = Countries(name: "Sweden")
                list.append(c1)
                list.append(c2)
                list.append(c3)
                
                countryList = list
            }
        }
    }
}


struct CountryItemTemplate: View {
    var country = Countries()
    var body: some View {
        HStack {
        Text(country.name!)
        Spacer()
        Image(systemName: "plus.circle")
                .foregroundColor(.blue)
                .onTapGesture {
                    print("Button selected")
                }
    }
}
}

#Preview {
    DynamicListing()
}
