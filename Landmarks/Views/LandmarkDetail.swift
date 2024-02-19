//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by JSenen on 18/2/24.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView_swift_(coordinate: landmark.locationCoordinate)
                .frame(height: 300)

            CircleImage_swif(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                        .font(.title)
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                Divider()
                Text("About \(landmark.name)")                                    .font(.title2)
                Text(landmark.description)
                }
            .padding()
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
