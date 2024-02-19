//
//  ContentView.swift
//  Landmarks
//
//  Created by JSenen on 18/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
        }
       
    }


    #Preview {
        ContentView()
            .environment(ModelData())
    }
