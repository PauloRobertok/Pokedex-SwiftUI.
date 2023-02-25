//
//  PokemonImage.swift
//  PokemonTest1-Swift5.5
//
//  Created by Paulo Roberto on 24/02/23.
//

import SwiftUI
import Kingfisher

struct PokemonImage: View {
    var image:KFImage
    
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .background(Circle().foregroundColor(.white))
            .shadow(radius: 5)
    }
}

struct PokemonImage_Previews: PreviewProvider {
    static var previews: some View {
        PokemonImage(image: KFImage(URL(string: PokemonViewModel().MOCK_POKEMON.imageURL)))
    }
}
