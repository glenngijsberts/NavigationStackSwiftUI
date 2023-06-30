//
//  PlatformDetailView.swift
//  Platforms
//
//  Created by Glenn Gijsberts on 30/06/2023.
//

import SwiftUI

struct PlatformDetailView: View {
    let platform: Platform
    
    var body: some View {
        ZStack {
            platform.color.ignoresSafeArea()
            
            VStack {
                Label(platform.name, systemImage: platform.imageName)
                    .font(.largeTitle).bold().foregroundColor(.white)
                
                List {
                    ForEach(Game.examples, id: \.name) { game in
                        NavigationLink(value: game) {
                            Text(game.name)
                        }
                    }
                }
            }
        }
    }
}

struct PlatformDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlatformDetailView(platform: Platform.examples[0])
    }
}
