//
//  FirstUIView.swift
//  WorldCountries
//
//  Created by Duc Dang on 8/7/20.
//

import SwiftUI

struct FirstUIView: View {
    
    @ObservedObject var networkmanager = NetworkManager()
    @State var searchText = ""
    @State var isSearchVisible = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                if isSearchVisible {
                    SearchView(searchText: $searchText)
                }
                
                List {
                    ForEach(networkmanager.worldData.filter {
                        self.searchText.isEmpty ? true: $0.name.lowercased().contains(self.searchText.lowercased())
                        }, id: \.name)
                    { country in
                        
                        NavigationLink(destination: DetailView(country: country)) {
                            RowView(country: country)
                        }
                    }
                }.animation(.spring())
                }.navigationBarTitle("World Country")
                .listStyle(GroupedListStyle())
                .navigationBarItems(trailing:
                    Button(action: {
                        self.isSearchVisible.toggle()
                        
                        if !self.isSearchVisible {
                            self.searchText = ""
                        }
                    }, label: {
                        Image(systemName: "magnifyingglass")
                    })
            )
        }.onAppear {
            self.networkmanager.fetchData()
        }
    }
}

struct FirstUIView_Previews: PreviewProvider {
    static var previews: some View {
        FirstUIView()
    }
}
