//
//  Creature.swift
//  CatchEmAll
//
//  Created by Eric on 03/05/2023.
//

import Foundation

struct Creature: Codable, Identifiable {
    let id = UUID().uuidString
    var name: String
    var url: String
    
    enum CodingKeys: CodingKey {
        case name, url
    }
}
