//
//  RowView.swift
//  WorldCountries
//
//  Created by Duc Dang on 8/7/20.
//

import SwiftUI
import SDWebImageSwiftUI

struct RowView: View {
    
    var country : WorldData

    var body: some View {
        
        HStack {
            AnimatedImage(url: URL(string: country.flag)!)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .shadow(radius: 5)
            
            Text(country.name)
                .fontWeight(.bold)
//                .foregroundColor(.black)
        }
    }
}
