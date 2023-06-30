//
//  GameRow.swift
//  Platforms
//
//  Created by Glenn Gijsberts on 30/06/2023.
//

import SwiftUI

struct GameRow: View {
    let game: Game
    
    var body: some View {
        NavigationLink(value: game) {
            Text(game.name)
        }
    }
}

struct GameRow_Previews: PreviewProvider {
    static var previews: some View {
        GameRow(game: Game.examples[0])
    }
}
