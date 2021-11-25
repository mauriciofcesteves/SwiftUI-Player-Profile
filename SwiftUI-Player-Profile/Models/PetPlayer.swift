//
//  PetPlayer.swift
//  SwiftUI-Player-Profile
//
//  Created by Mauricio Esteves on 2021-02-10.
//  Copyright © 2021 personal. All rights reserved.
//

import Foundation

struct PetPlayer: Identifiable {
    var id: Int
    var name: String
    var age: Int
    var imageName: String
    var nationality: String
}

extension PetPlayer {

    static func all() -> [PetPlayer] {
        [
            PetPlayer(id: 0, name: "Popo", age: 35, imageName: "Pet1", nationality: "Brazil"),
            PetPlayer(id: 1, name: "Podolski", age: 31, imageName: "Pet2", nationality: "Brazil"),
            PetPlayer(id: 2, name: "Lukas", age: 29, imageName: "Pet3", nationality: "Brazil"),
            PetPlayer(id: 3, name: "Tony", age: 23, imageName: "Pet4", nationality: "Canada")
        ]
    }
}
