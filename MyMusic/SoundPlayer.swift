//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by Murayama Junpei on 2021/07/22.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    // シンバルの音源データ読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    
    // シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    // ギターの音源データ読み込み
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    // ギター用プレイヤーの変数
    var guitarPlayer: AVAudioPlayer!

    func cymbalPlay() {
        do {
            // シンバル用のプレイヤーに、音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            // シンバルの音源再生
            cymbalPlayer.play()
            
        } catch {
            print("シンバルで、エラーが発生しました！")
        }
    }
    
    func guitarPlay() {
        do {
            // ギター用のプレイヤーに、音源データを指定
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            // ギターの音源再生
            guitarPlayer.play()

        } catch {
            print("ギターで、エラーが発生しました！")
        }

    }

}
