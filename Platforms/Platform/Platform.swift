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
    
    static let examples = [
        Self.init(name: "Xbox", imageName: "xbox.logo", color: .green),
        Self.init(name: "Playstation", imageName: "playstation.logo", color: .indigo),
        Self.init(name: "PC", imageName: "pc", color: .pink),
        Self.init(name: "Mobile", imageName: "iphone", color: .mint)
    ]
}
