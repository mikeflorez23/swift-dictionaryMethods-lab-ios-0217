//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods {
    
    var starWarsHeroes: [String] = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    
    var starWarsDroids: [String] = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    
    var starWarsGangsters: [String] = ["Watto", "Jabba the Hutt"]
    
    var starWarsCharacters: [String:[String]] = [:]
    
    var starWarsVillains: [String] = ["Darth Vader", "Emperor Palpatine"]
    
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    func remove(droid: String) -> Bool {
        if let index = starWarsDroids.index(of: droid) {
            starWarsDroids.remove(at: index)
            return true
        } else {
            return false
        }
    }
    
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
    }
    
    func createStarWarsGangsters() {
        starWarsCharacters.updateValue(starWarsGangsters, forKey: "Gangsters")
    }
    
    func description(characters: [String:[String]]) -> String {
        var sentence  = "--Star Wars Characters--"
        for (key, value) in characters {
            sentence += "\n\(key.uppercased())"
            for (index, name) in value.enumerated() {
                sentence += "\n\(index + 1). \(name)"
            }
        }
        return sentence
    }
    
    func addHearts() {
        for (type, names) in starWarsCharacters {
            var newNames = names
            for (index, name) in newNames.enumerated() {
                if name.contains("o") {
                    let newName = name.replacingOccurrences(of: "o", with: "♥️")
                    newNames[index] = newName
                }
            }
            starWarsCharacters[type] = newNames
        }
    }
    
    
    
    
}
