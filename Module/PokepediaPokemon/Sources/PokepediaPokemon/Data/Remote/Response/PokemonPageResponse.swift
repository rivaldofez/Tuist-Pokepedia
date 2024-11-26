//
//  File.swift
//  
//
//  Created by Rivaldo Fernandes on 24/08/23.
//

import Foundation

struct PokemonPageResponse: Codable {
    let count: Int
    let previous: String?
    let next: String?
    var pokemonItem: [PokemonPageItemResponse]
    
    enum CodingKeys: String, CodingKey {
        case count
        case previous
        case next
        case pokemonItem = "results"
    }
}

struct PokemonPageItemResponse: Codable {
    let name: String
    let url: String
    var pokemon: PokemonItemResponse?
    
    enum CodingKeys: String, CodingKey {
        case name
        case url
        case pokemon = "pokemonSpecies"
    }
}
