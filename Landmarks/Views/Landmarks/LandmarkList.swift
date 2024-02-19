//
//  LandmarkList.swift
//  Landmarks
//
//  Created by JSenen on 18/2/24.
//

import SwiftUI


struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }
    
    var body: some View {
        NavigationSplitView {
            List {
                //Toogle button
                Toggle(isOn: $showFavoritesOnly) {
                        Text("Favorites only")
                        }
                //combine two or more different groups of dynamic views,
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                        } label: {
                        LandmarkRow(landmark: landmark)
                        }
                    }
                }
            .animation(.default, value: filteredLandmarks)
                        .navigationTitle("Landmarks")
            } detail: {
                        Text("Select a Landmark")
            }
        }
}


#Preview {
    LandmarkList()
        .environment(ModelData())
}
