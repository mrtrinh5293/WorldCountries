//
//  CountryMapView.swift
//  WorldCountries
//
//  Created by Duc Dang on 8/7/20.
//

import SwiftUI
import MapKit

struct CountryMapView: UIViewRepresentable {
    
    var country : WorldData
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let latitude = country.latlng[0]
        let longtitude = country.latlng[1]
        
        let coordinate = CLLocationCoordinate2D(
            latitude: latitude, longitude: longtitude)
        let span = MKCoordinateSpan(latitudeDelta: 20.0, longitudeDelta: 20.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}
