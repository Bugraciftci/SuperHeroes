//
//  ListeRow.swift
//  SuperHeros
//
//  Created by Muhammed Buğra on 31.12.2023.
//

import SwiftUI

struct ListeRowView: View {
    var hero : SuperHerosModel
    var body: some View {
        HStack{
            Image(hero.pic)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 100, alignment: .leading)
                .clipShape(Circle())
            Spacer()
            VStack{
                Text(hero.name)
                Text(hero.realName)
            }
            .font(.title3)
            .bold()
            Spacer()
        }
    }
}

#Preview {
    ListeRowView(hero: batman)
}
