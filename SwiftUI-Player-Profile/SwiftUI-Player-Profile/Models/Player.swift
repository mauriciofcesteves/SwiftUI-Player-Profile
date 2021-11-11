//
//  Player.swift
//  SwiftUI-Player-Profile
//
//  Created by Mauricio Esteves on 2021-02-10.
//  Copyright © 2021 personal. All rights reserved.
//

import Foundation

struct Player: Identifiable {
    var id: Int
    var name: String
    var age: Int
    var imageName: String
    var nationality: String
}

let players = [
    Player(id: 0, name: "Popo", age: 35, imageName: "Pet1", nationality: "brasil-flag"),
    Player(id: 1, name: "Podolski", age: 31, imageName: "Pet2", nationality: "brasil-flag"),
    Player(id: 2, name: "Lukas", age: 29, imageName: "Pet3", nationality: "brasil-flag"),
    Player(id: 3, name: "Tony", age: 23, imageName: "Pet4", nationality: "canada-flag")
]
