//
//  CountryGetter.swift
//  countriesApp
//
//  Created by Bastien VINH on 03/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import Foundation

class CountryGetter {
    
    let france = Country(name: "France", capital: "Paris", code: "fr")
    let espagne = Country(name: "Espagne", capital: "Madrid", code: "es")
    let italy = Country(name: "Italie", capital: "Rome", code: "it")
    let russia = Country(name: "Russie", capital: "Moscou", code: "ru")
    let grece = Country(name: "Grece", capital: "Athene", code: "gr")
    let belgique = Country(name: "Belgique", capital: "Bruxelle", code: "be")
    let allemagne = Country(name: "Allemagne", capital: "Berlin", code: "de")
    let usa = Country(name: "U.S.A", capital: "Washington D.C", code: "us")
    let bresil = Country(name: "Brésil", capital: "Brazilia", code: "br")
    let chine = Country(name: "Chine", capital: "Pekin", code: "cn")
    let japon = Country(name: "Japon", capital: "Tokyo", code: "jp")
    let algerie = Country(name: "Algérie", capital: "Alger", code: "dz")
    let cameroun = Country(name: "Cameroun", capital: "Yaounde", code: "cm")
    
    func getAllCountries() -> [Country] {
        return [france, espagne, italy, russia, grece, belgique, allemagne, usa, bresil, chine, japon, algerie, cameroun]
    }
    
    func getContinents() -> [Continent] {
        return [
            Continent(name: "Europe", countries: [france, espagne, italy, russia, grece, belgique, allemagne]),
            Continent(name: "Ameriques", countries: [usa, bresil]),
            Continent(name: "Asie", countries: [chine, japon]),
            Continent(name: "Afrique", countries: [algerie, cameroun])
        ]
    }
}
