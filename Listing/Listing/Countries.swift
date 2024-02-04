//
//  Countries.swift
//  Listing
//
//  Created by Yavuz Kaan Akyüz on 4.02.2024.
//

import SwiftUI

class Countries: Identifiable {
    var name: String?
    
    init() {
        
    }
    
    init(name: String?) {
        self.name = name
    }
}
