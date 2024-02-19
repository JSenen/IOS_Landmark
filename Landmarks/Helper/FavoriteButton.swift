//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by JSenen on 19/2/24.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet : Bool
    var body: some View {
        Button {
            isSet.toggle()
        }label: {
            Label("Toggle favorite", systemImage: isSet ? "star.fill" : "start")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
