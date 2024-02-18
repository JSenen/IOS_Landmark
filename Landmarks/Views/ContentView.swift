//
//  ContentView.swift
//  Landmarks
//
//  Created by JSenen on 18/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView_swift_()
                .frame(height: 300)
            CircleImage_swif()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                    Text("Turtle Rock")
                        .font(.title)
                    HStack {
                        Text("Joshua Tree National Park")
                            .font(.subheadline)
                        Spacer()
                        Text("California")
                            .font(.subheadline)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                Divider()
                Text("About Turtle Rock")                                    .font(.title2)
                Text("Descriptive text goes here.")
                }
            .padding()
            Spacer()
        }
        }
       
    }


    #Preview {
        ContentView()
    }