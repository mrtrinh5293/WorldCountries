//
//  ContentView.swift
//  WorldCountries
//
//  Created by Duc Dang on 8/7/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            FirstUIView().tabItem{
                Tab(imageName: "chart.bar", text: "Recent")
                    .tag(0)
            }
            
            WorldMapView()
                .edgesIgnoringSafeArea(.vertical)
                .tabItem{
                    Tab(imageName: "map", text: "Map")
                        .tag(1)
                    
            }
        }
    }
}

private struct Tab: View {
    let imageName: String
    let text: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
