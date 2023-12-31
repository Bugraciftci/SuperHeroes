//
//  SpecialView.swift
//  SuperHeros
//
//  Created by Muhammed Buğra on 31.12.2023.
//

import SwiftUI

struct SpecialView: View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color.white,lineWidth: 5))
            .shadow(radius: 12)
    }
}

#Preview {
    SpecialView(image: Image("superman"))
}
