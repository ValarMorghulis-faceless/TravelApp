//
//  Models.swift
//  TravelApp
//
//  Created by Giorgi Samkharadze on 24.11.22.
//

import Foundation

// Location
class Location: ObservableObject, Identifiable {
    var id = UUID()
    var title: String = ""
    var imageName: String = ""
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}

//Type of Place
enum PlaceType: String, CaseIterable {
    case restaurant
    case mall
    case sportingVenue
    case airport
    case unknown
    
    var imagename: String {
        switch self {
        case .restaurant:
            return "place1"
        case .mall:
            return "place2"
        case .sportingVenue:
            return "place3"
        case .airport:
            return "place4"
        case .unknown:
            return "place5"
        
        }
    }
}

// Place
class Place: ObservableObject, Identifiable {
    var id = UUID()
    var type: PlaceType = .unknown
    var location = Location(title: "", imageName: "")
    var title: String = ""
    var description: String = ""
    
    init(type: PlaceType, location: Location, title: String, description: String) {
        self.type = type
        self.location = location
        self.title = title
        self.description = description
    }
}
