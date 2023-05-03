//
//  Returned.swift
//  CatchEmAll
//
//  Created by Eric on 03/05/2023.
//

import Foundation

struct Returned: Codable {
    var count: Int
    var next: String
    var results: [Creature]
}
