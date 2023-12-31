//
//  SuperHeros.swift
//  SuperHeros
//
//  Created by Muhammed Buğra on 30.12.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperHerosModel : Identifiable {
    var id = UUID()
    var name : String
    var realName : String
    var pic : String
    var city: String
    var job : String
    var koordinat : Koordinat

    var koordinatlocation : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
}

struct Koordinat {
    var latitude : Double
    var longitude : Double
}

let batman = SuperHerosModel(name: "Batman", realName: "Bruce Wayne", pic: "batman", city: "Gotham", job: "business man", koordinat: Koordinat(latitude: 20.0, longitude: 20.0))
let superman = SuperHerosModel(name: "Superman", realName: "Clark Kent", pic: "superman", city: "Metropolis", job: "journalist", koordinat: Koordinat(latitude: 40.7128, longitude: -74.0060))
let spiderman = SuperHerosModel(name: "Spiderman", realName: "Peter Parker", pic: "spiderman", city: "New York", job: "photographer", koordinat: Koordinat(latitude: 40.7128, longitude: -74.0060))
let wonderWoman = SuperHerosModel(name: "Wonder Woman", realName: "Diana Prince", pic: "wonderWoman", city: "Themyscira", job: "Amazonian princess", koordinat: Koordinat(latitude: 37.9838, longitude: 23.7275))

let SuperHerosList = [batman,superman,spiderman,wonderWoman]
