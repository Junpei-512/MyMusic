//
//  ContentView.swift
//  MyMusic
//
//  Created by Murayama Junpei on 2021/07/22.
//

import SwiftUI

struct ContentView: View {
    // 音を鳴らすためのSoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    var body: some View {
        ZStack{
        //背景画像を指定
        Image("background")
            //リサイズ
            .resizable()
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            HStack{
                Button(action: {
                    soundPlayer.cymbalPlay()
                }){
                    ButtonImageView(imageName: "cymbal")
                    
                }
                
                Button(action:{
                    soundPlayer.guitarPlay()
                }){
                    ButtonImageView(imageName: "guitar")
                }
            }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
