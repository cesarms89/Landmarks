//
//  Landmark.swift
//  Landmarks
//
//  Created by Cesar Mendez Santos on 05/04/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    //Hashable. Permite intercambiar informacion entre el modelo y la vista
    //Codable. Permite leer informacion del archivo
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
    
}
