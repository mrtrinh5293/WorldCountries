//
//  DetailView.swift
//  WorldCountries
//
//  Created by Duc Dang on 8/7/20.
//

import SwiftUI

struct DetailView: View {
    
    var country : WorldData
    
    var body: some View {
        ScrollView(Axis.Set.vertical, showsIndicators: true) {
            VStack {
                CountryMapView(country: country)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 300)
                
                CircleImage(country: country)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                Text(country.name)
                    .font(.title).multilineTextAlignment(.center)
                HStack() {
                    
                    VStack(alignment: .leading) {
                        Text("Capital")
                        
                        Text("Region")
                        
                        Text("Population")
                        
                        Text("Currency")
                        
                        Text("ISO Code")
                        
                        Text("Time Zone")
                        
                        Text("Area (in Kilometer)")
                        
                        
                    }.padding().font(.headline)
                    VStack(alignment: .leading) {
                        Text(country.capital)
                        
                        Text(country.region)
                        
                        Text(country.population.formatNumber())
                        
                        Text("\(country.currencies![0].symbol!) \(country.currencies![0].name!)")
                        
                        Text(country.alpha2Code)
                        
                        Text(country.timezones[0])
                        
                        Text("\((country.area?.formatNumber())!).000")
                        
                        //                    Text(country.languages)
                        
                    }.font(.headline).padding(.trailing, 10)
                }.background(Color("greyBackground"))
                    .cornerRadius(10.0)
            }.offset(y: -60)
        }
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
//    }
//}
