//
//  WeatherData.swift
//  Clima
//
//  Created by Kartikeya Chauhan on 30/09/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable { //Decodable for JSON; Codable is a type alias
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}
