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
    
    static let examples = [
        Self.init(name: "FIFA", rating: "45"),
        Self.init(name: "Minecraft", rating: "90"),
        Self.init(name: "League of Legends", rating: "95"),
        Self.init(name: "Diablo 4", rating: "85")
    ]
}
