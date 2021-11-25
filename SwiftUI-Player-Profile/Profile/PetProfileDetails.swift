//
//  PetProfileDetails.swift
//  SwiftUI-Player-Profile
//
//  Created by Mauricio Esteves on 2021-01-26.
//  Copyright © 2021 personal. All rights reserved.
//

import SwiftUI

struct PetProfileDetails: View {
    
    var player: PetPlayer
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(player.imageName)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 15)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }

            TitleAndValueText(title: "Age", value: "\(player.age)")
            TitleAndValueText(title: "Nationality", value: "\(player.nationality)")

        }.navigationBarTitle(Text(player.name), displayMode: .inline)
    }
}

struct PetProfileDetails_Previews: PreviewProvider {
    static var previews: some View {
        PetProfileDetails(player: PetPlayer.all()[0])
    }
}
