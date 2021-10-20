//
//  PlaceModel.swift
//  myPlaces_SB
//
//  Created by Артём on 14.10.2021.
//

import RealmSwift
import UIKit

struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
    static let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "Love&Life", "Шок", "Бочка"
    ]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Уфа", type: "Ресторан", image: nil, restaurantImage: place))
        }
        
        return places
    }
}










//class Place: Object {
//
//    @objc dynamic var name = ""
//    @objc dynamic var location: String?
//    @objc dynamic var type: String?
//    @objc dynamic var imageData: Data?
//
//
//
//    let restaurantNames = ["Пузата Хата","Мамой клянусь","KFC","Репортер","В Главных Ролях", "SOHO", "Cost","Varburger","Black Sheep", "Fish&Chips", "Pizza360"]
//
//    func savePlace () {
//
//        for place in restaurantNames {
//
//            let image = UIImage(named: place)
//            guard let imageData = image?.pngData() else { return }
//
//
//            let newPlace = Place()
//
//            newPlace.name = place
//            newPlace.location = "Dnipro"
//            newPlace.type = "Restaurant"
//            newPlace.imageData = imageData
//
//            StorageManager.saveObject(newPlace)
//        }
//    }
//
//}
