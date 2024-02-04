//
//  ContentView.swift
//  Listing
//
//  Created by Yavuz Kaan Akyüz on 3.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var countryList = [String]()
    @State private var selectedCountry = ""
    var body: some View {
        VStack(spacing: 100) {
            Picker("", selection: $selectedCountry) {
                ForEach(countryList, id: \.self) { ulke in
                    Text(ulke)
                }
            }
            .pickerStyle(.wheel)
            
            Text(selectedCountry)
                .padding()
                .background(.blue)
                .cornerRadius(20)
                .foregroundColor(.white)
        }
        .onAppear {
            countryList.append("Japan")
            countryList.append("Argentina")
            countryList.append("Italy")
        }
    }
}

#Preview {
    ContentView()
}
