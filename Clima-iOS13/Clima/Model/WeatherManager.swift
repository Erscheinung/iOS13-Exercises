//
//  WeatherManager.swift
//  Clima
//
//  Created by Kartikeya Chauhan on 29/09/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL =
    "http://api.openweathermap.org/data/2.5/weather?appid=0cb167e566a6bcfbfc19294b0ee33da5&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
