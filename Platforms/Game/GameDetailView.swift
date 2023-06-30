//
//  GameDetailView.swift
//  Platforms
//
//  Created by Glenn Gijsberts on 30/06/2023.
//

import SwiftUI

struct GameDetailView: View {
    let game: Game
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(game.name) - Rating: \(game.rating)")
                .font(.largeTitle.bold())
            
            Button("Recommended game") {
                path.append(Game.examples.randomElement()!)
            }
            
            Button("Go to another platform") {
                path.append(Platform.examples.randomElement()!)
            }
            
            Button("Go home") {
                path.removeLast(path.count)
            }
        }
    }
}

struct GameDetailView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    
    static var previews: some View {
        GameDetailView(game: Game.examples[0], path: $path)
    }
}
