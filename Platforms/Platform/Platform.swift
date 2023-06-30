//
//  Platform.swift
//  Platforms
//
//  Created by Glenn Gijsberts on 30/06/2023.
//

import SwiftUI

struct Platform: Hashable {
    let name: String
    let imageName: String
    let color: Color
    
    static let examples: [Platform] = [
        .init(name: "Xbox", imageName: "xbox.logo", color: .green),
        .init(name: "Playstation", imageName: "playstation.logo", color: .indigo),
        .init(name: "PC", imageName: "pc", color: .pink),
        .init(name: "Mobile", imageName: "iphone", color: .mint)
    ]
}
