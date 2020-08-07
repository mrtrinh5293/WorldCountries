//
//  SearchView.swift
//  WorldCountries
//
//  Created by Duc Dang on 8/7/20.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            TextField("Country...", text: $searchText)
                .padding()
        }.frame(height: 50)
            .background(Color("greyBackground"))
            .cornerRadius(10.0)
            .padding(10)
        
    }
}
