//
//  DynamicListingWithDetailView.swift
//  Listing
//
//  Created by Yavuz Kaan Akyüz on 4.02.2024.
//

import SwiftUI

struct DynamicListingWithDetailView: View {
    
    @State private var countryList = [Countries]()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(countryList) { index in
                    NavigationLink(destination: CountryDetailView(country: index)) {
                        CountryDetailView(country: index)
                            .font(.system(size: 10))
                            .onTapGesture {
                                print("\(index.name!) selected !")
                            }
                    }
                }
            }
        }
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

#Preview {
    DynamicListingWithDetailView()
}
