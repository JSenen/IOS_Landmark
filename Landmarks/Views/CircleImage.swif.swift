//
//  CircleImage.swif.swift
//  Landmarks
//
//  Created by JSenen on 18/2/24.
//

import SwiftUI

struct CircleImage_swif: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage_swif()
}
