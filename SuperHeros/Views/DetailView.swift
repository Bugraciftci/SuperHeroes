//
//  DetailView.swift
//  SuperHeros
//
//  Created by Muhammed Buğra on 31.12.2023.
//

import SwiftUI

struct DetailView: View {
    var chosenCharacter : SuperHerosModel
    var body: some View {
                
        VStack{
            MapView(Koordinate: chosenCharacter.koordinatlocation)
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .edgesIgnoringSafeArea(.top)
            SpecialView(image: Image(chosenCharacter.pic))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3)
                .offset(y: UIScreen.main.bounds.height * -0.3)
        }
        VStack (alignment: .leading) {
            HStack{
                Text(chosenCharacter.name)
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                Spacer()
                Text(chosenCharacter.realName)
                    .font(.title)
                    .foregroundColor(.orange)
            }
            HStack{
                Text(chosenCharacter.city)
                Spacer()
                Text(chosenCharacter.job)
            }
            .bold()
            .font(.title2)
        }
        .padding()
        .offset(y: UIScreen.main.bounds.height * -0.2)
        Spacer()
    }
}

#Preview {
    DetailView(chosenCharacter: batman)
}
