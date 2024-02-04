//
//  CountryDetailView.swift
//  Listing
//
//  Created by Yavuz Kaan Akyüz on 4.02.2024.
//

import SwiftUI

struct CountryDetailView: View {
    var country = Countries()
    var body: some View {
        Text(country.name!).font(.system(size: 50))
    }
}

#Preview {
    CountryDetailView()
}
