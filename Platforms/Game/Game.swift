//
//  File.swift
//  Platforms
//
//  Created by Glenn Gijsberts on 30/06/2023.
//

import SwiftUI

struct Game: Hashable {
    let name: String
    let rating: String
    
    static let examples: [Game] = [
        .init(name: "FIFA", rating: "45"),
        .init(name: "Minecraft", rating: "90"),
        .init(name: "League of Legends", rating: "95"),
        .init(name: "Diablo 4", rating: "85")
    ]
}
