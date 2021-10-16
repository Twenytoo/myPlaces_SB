//
//  PlaceModel.swift
//  myPlaces_SB
//
//  Created by Артём on 14.10.2021.
//

import Foundation

struct Place {
    
    var name: String 
    var location: String
    var type: String
    var image: String 



static let restaurantNames = ["Пузата Хата","Мамой клянусь","KFC","Репортер","В Главных Ролях", "SOHO", "Cost","Varburger","Black Sheep", "Fish&Chips", "Pizza360"]

static func getPlace ()->[Place] {
    
    var places = [Place]()
    
    for place in restaurantNames{
        places.append(Place(name: place, location: "Днепр", type: "Ресторан", image: place))
    }
    
    return places
}

}
