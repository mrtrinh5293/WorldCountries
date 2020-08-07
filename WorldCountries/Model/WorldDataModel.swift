//
//  WorldDataModel.swift
//  WorldCountries
//
//  Created by Duc Dang on 8/7/20.
//

import Foundation

struct Currency: Decodable {
    let code, name, symbol: String?
}

struct Language : Decodable {
    let name : String?
}



struct WorldData: Identifiable, Decodable {
    var id : Int {
        return population
    }
    var name: String
    var numericCode : String?
    var alpha2Code : String
    var capital : String
    var region : String
    var population: Int
    var area : Double?
    var altSpellings : [String]
    var timezones : [String]
    var latlng : [Double]
    var currencies : [Currency]?
    var languages : [Language]
    var flag : String
    
}
