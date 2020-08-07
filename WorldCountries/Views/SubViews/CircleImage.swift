//
//  CircleImage.swift
//  WorldCountries
//
//  Created by Duc Dang on 8/7/20.
//

import SwiftUI
import SDWebImageSwiftUI

struct CircleImage: View {
    
    var country : WorldData
    
    var body: some View {
        AnimatedImage(url: URL(string: country.flag)!)
        .resizable()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
        .shadow(radius: 10)
        
        
    }
}
