//
//  Landmark.swift
//  LandmarksApp
//
//  Created by 김연지 on 5/10/24.
//

import Foundation
import SwiftUI
import CoreLocation

//Hashable : 아이템 간에 구분하는거
//identifiable 최종!!
struct Landmark: Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName:String
    var image: Image {
        Image(imageName)
    }
    // 이미지 자체를 만들어서 쓸거니까... 그래서 걍 다시 또 담았지...
    
    private var coordinates: Coordinates
    var locationCoodinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates : Codable {
        var latitude: Double
        var longitude: Double
    }
}


// public private protect fileprivate
