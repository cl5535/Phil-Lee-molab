//
//  Page 1.swift
//  Week04 - Audio
//
//  Created by Philip Lee on 2022/2/24.
//

import SwiftUI
import AVFAudio
import AVFoundation

let bundleAudio = [
  "edm-beat.mp3",
  "edm-pop.mp3",
  "electro-edm.mp3"
];

func loadBundleAudio(_ fileName:String) -> AVAudioPlayer? {
  let path = Bundle.main.path(forResource: fileName, ofType:nil)!
  let url = URL(fileURLWithPath: path)
  do {
    return try AVAudioPlayer(contentsOf: url)
  } catch {
    print("loadBundleAudio error", error)
  }
  return nil
}


struct Page1: View {
  @State private var soundIndex = 0
  @State private var soundFile = bundleAudio[0]
  @State private var player: AVAudioPlayer? = nil
  var body: some View {
      ZStack {
          Color.black.ignoresSafeArea()
      VStack {
          HStack{
          Text("Music Player")
              .font(.system(size: 45))
              .fontWeight(.bold)
              .foregroundColor(Color.orange)
              .padding(.bottom)
          }
        HStack {
            ZStack{
                Image(systemName: "play.fill").resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
          Button("Play") {
            print("Button Play")
            player = loadBundleAudio(soundFile)
            print("player", player as Any)
            // Loop indefinitely
            player?.numberOfLoops = -1
            player?.play()
          }
          .padding(.trailing)
            }
            
            ZStack{
                Image(systemName: "stop.fill").resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
            Button("Stop") {
            print("Button Stop")
            player?.stop()
            }
            .padding(.horizontal)
            }

            ZStack{
                Image(systemName: "forward.fill").resizable()
                    .frame(width: 70, height: 50)
                    .foregroundColor(.blue)
          Button("Next") {
            soundIndex = (soundIndex+1) % bundleAudio.count
            soundFile = bundleAudio[soundIndex];
          }
          .padding(.leading)
            }
        }
          Text("sound track \(soundIndex)")
              .foregroundColor(Color.white)
              .padding(.vertical)
          Text("\(soundFile)")
              .foregroundColor(Color.white)
              .padding(.bottom)
        if let player = player {
            Text("duration " + String(format: "%.1f", player.duration))
                .foregroundColor(Color.white)
                .padding(.bottom)
            Text("currentTime " + String(format: "%.1f", player.currentTime))
                .foregroundColor(Color.white)
        }
      }
    }
  }
  }




struct Page1_Previews: PreviewProvider {
  static var previews: some View {
    Page1()
  }
}
