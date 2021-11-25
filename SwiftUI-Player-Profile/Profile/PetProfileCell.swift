//
//  PetProfileCell.swift
//  SwiftUI-Player-Profile
//
//  Created by Mauricio Esteves on 2021-02-10.
//  Copyright © 2021 personal. All rights reserved.
//

import SwiftUI

struct PetProfileCell: View {
    
    var player: PetPlayer
    
    var body: some View {
        HStack {
            Image(player.imageName)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 100, height: 100)
                .cornerRadius(16)

            Text(player.name).font(.body)
        }
    }
}

struct PetProfileRowView_Previews: PreviewProvider {
    static var previews: some View {
        PetProfileCell(player: PetPlayer.all()[3]).previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 100))
    }
}
