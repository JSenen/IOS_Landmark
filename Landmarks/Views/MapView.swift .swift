//
//  MapView.swift .swift
//  Landmarks
//
//  Created by JSenen on 18/2/24.
//

import SwiftUI
import MapKit

struct MapView_swift_: View {
    
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
           MKCoordinateRegion(
            center: coordinate,
               span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
           )
       }
}

#Preview {
    MapView_swift_(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
