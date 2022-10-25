//
//  MapView.swift
//  CoffeeApp
//
//  Created by Camilo on 10/24/22.
//

import SwiftUI
import MapKit

struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}

struct MapView: View {
    @State private var mapView = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 7.06222, longitude: -73.08644), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let markers = [Marker(location: MapMarker(coordinate: CLLocationCoordinate2D(latitude: 7.071903912160863, longitude: -73.10513335165493), tint: .red))]

    
    var body: some View {
        Map(coordinateRegion: $mapView, showsUserLocation: true,
            annotationItems: markers) { marker in
            marker.location
        }
            .frame(height: 300)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
