//
//  PlatformRow.swift
//  Platforms
//
//  Created by Glenn Gijsberts on 30/06/2023.
//

import SwiftUI

struct PlatformRow: View {
    let platform: Platform
    
    var body: some View {
        NavigationLink(value: platform) {
            Label(platform.name, systemImage: platform.imageName)
                .foregroundColor(platform.color)
        }
    }
}

struct PlatformRow_Previews: PreviewProvider {
    static var previews: some View {
        PlatformRow(platform: Platform.examples[0])
    }
}
