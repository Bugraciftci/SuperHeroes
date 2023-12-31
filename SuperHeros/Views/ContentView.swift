//
//  ContentView.swift
//  SuperHeros
//
//  Created by Muhammed Buğra on 30.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                List(SuperHerosList) { hero in
                    NavigationLink(
                        destination:
                            DetailView(chosenCharacter: hero),
                        label: {
                            ListeRowView(hero: hero)

                    })
                    .navigationTitle("SuperHero")
                }
            }
        }
    }

#Preview {
    ContentView()
}
