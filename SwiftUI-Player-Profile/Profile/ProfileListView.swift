//
//  ProfileListView.swift
//  SwiftUI-Player-Profile
//
//  Created by Mauricio Esteves on 2021-02-10.
//  Copyright © 2021 personal. All rights reserved.
//

import SwiftUI

struct ProfileListView: View {
    var body: some View {
        NavigationView {
            List(players) {
                currentPlayer in
                NavigationLink(destination: ProfileDetailsView(player: currentPlayer)) {
                    ProfileRowView(player: currentPlayer).frame(height: 60)
                }
            }.navigationBarTitle(Text("Players List"))
        }
    }
}

struct ProfileListView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileListView()
    }
}
