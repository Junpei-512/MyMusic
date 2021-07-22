//
//  ButtonImageView.swift
//  MyMusic
//
//  Created by Murayama Junpei on 2021/07/22.
//

import SwiftUI

struct ButtonImageView: View {
    
    let imageName: String
    var body: some View {
        Image(imageName)
            .renderingMode(.original)
    }
}

struct ButtonImageView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonImageView(imageName: "cymbal")
    }
}
