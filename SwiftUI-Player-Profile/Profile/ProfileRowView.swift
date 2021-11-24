//
//  ProfileRowView.swift
//  SwiftUI-Player-Profile
//
//  Created by Mauricio Esteves on 2021-02-10.
//  Copyright © 2021 personal. All rights reserved.
//

import SwiftUI

struct ProfileRowView: View {
    
    var player: Player
    
    var body: some View {
        HStack {
            Image(player.imageName).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).background((Circle())).foregroundColor(.yellow)
            Text(player.name).font(.largeTitle)
            Spacer()
        }
    }
}

struct ProfileRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRowView(player: players[3]).previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 100))
    }
}
