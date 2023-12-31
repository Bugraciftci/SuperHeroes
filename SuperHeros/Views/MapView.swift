//
//  MapView.swift
//  SuperHeros
//
//  Created by Muhammed Buğra on 30.12.2023.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable{
    
    var Koordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: Koordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
}

#Preview {
    MapView(Koordinate: CLLocationCoordinate2D(
        latitude: superman.koordinat.latitude,
        longitude: superman.koordinat.longitude))
}



