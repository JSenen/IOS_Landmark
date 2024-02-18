//
//  Landmark.swift
//  Landmarks
//
//  Created by JSenen on 18/2/24.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
       var image: Image {
           Image(imageName)
       }
}
