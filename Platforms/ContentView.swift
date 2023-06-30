//
//  ContentView.swift
//  Platforms
//
//  Created by Glenn Gijsberts on 30/06/2023.
//

import SwiftUI

struct ContentView: View {    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("Platforms") {
                    ForEach(Platform.examples, id: \.name) { platform in
                        PlatformRow(platform: platform)
                    }
                }
                
                Section("Games") {
                    ForEach(Game.examples, id: \.name) { game in
                        GameRow(game: game)
                    }
                }
            }
            .navigationTitle("Gaming")
            .navigationDestination(for: Platform.self) { platform in
                PlatformDetailView(platform: platform)
            }
            .navigationDestination(for: Game.self) { game in
                GameDetailView(game: game, path: $path)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
