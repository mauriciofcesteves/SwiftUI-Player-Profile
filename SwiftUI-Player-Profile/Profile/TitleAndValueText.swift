//
//  TitleAndValueText.swift
//  SwiftUI-Player-Profile
//
//  Created by Mauricio Esteves on 2021-02-03.
//  Copyright © 2021 personal. All rights reserved.
//

import SwiftUI

struct TitleAndValueText: View {
    
    var title: String
    var value: String
    
    var body: some View {
        HStack {
            Text("\(title): ").font(.system(size: 30)).fontWeight(.bold).padding(.leading, 30)
            Text(value).font(.system(size: 30)).fontWeight(.light).padding(.trailing, 30)
            Spacer()
        }
    }
}

struct TitleAndValueText_Previews: PreviewProvider {
    static var previews: some View {
        TitleAndValueText(title: "Title", value: "Value")
    }
}
