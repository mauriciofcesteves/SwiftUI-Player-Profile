//
//  PetProfileListView.swift
//  SwiftUI-Player-Profile
//
//  Created by Mauricio Esteves on 2021-02-10.
//  Copyright © 2021 personal. All rights reserved.
//

import SwiftUI

struct PetProfileListView: View {
    let players = PetPlayer.all()

    var body: some View {
         NavigationView {
            List(players, id: \.id) { player in
                NavigationLink(destination: PetProfileDetails(player: player)) {
                    PetProfileCell(player: player)
                }
            }.navigationBarTitle(Text("Pet Players"))
        }
    }
}

struct PetProfileListView_Previews: PreviewProvider {
    static var previews: some View {
        PetProfileListView()
    }
}
