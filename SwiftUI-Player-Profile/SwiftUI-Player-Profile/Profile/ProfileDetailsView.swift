//
//  ContentView.swift
//  SwiftUI-Player-Profile
//
//  Created by Mauricio Esteves on 2021-01-26.
//  Copyright © 2021 personal. All rights reserved.
//

import SwiftUI

struct ProfileDetailsView: View {
    
    var player: Player
    
    var body: some View {
        VStack {
            Image(player.nationality).resizable().aspectRatio(contentMode: .fit)
            
            Image(player.imageName).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x: 0, y: -90).padding(.bottom,  -70).shadow(radius: 15)
            
            Text(player.name).font(.system(size: 40)).fontWeight(.bold)
            Spacer()
            TitleAndValueTextView(title: "Age", value: "06")
            TitleAndValueTextView(title: "Height", value: "2m")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ProfileDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetailsView(player: players[0])
    }
}
