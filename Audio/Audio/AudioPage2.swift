//
//  AudioPage.swift
//  Audio
//
//  Created by Philip Lee on 2022/3/21.
//

import SwiftUI

struct AudioPage2: View {
    @StateObject var audioVM: AudioViewModel
    @State private var showPlayer = false
    
    var body: some View {
        VStack(spacing: 0) {
            //MARK: Image
            
            Image(audioVM.audio.image)
                .resizable()
                . scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
            
            //MARK: Details
            ZStack {
                Color(red: 24/255, green: 23/255, blue: 22/255, opacity: 100)
                
                VStack(alignment: .leading, spacing: 24) {
                    //MARK: Type & Duration
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Music")
                        
                        Text(DateComponentsFormatter.abbreviated.string(from:audioVM.audio.duration) ?? audioVM.audio.duration.formatted() + "s")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    //MARK: Title
                    Text(audioVM.audio.title)
                        .font(.title)
                    
                    //MARK: Play Button
                    Button {
                        showPlayer = true
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(20)
                    }

                    
                    //MARK: Description
                    Text(audioVM.audio.description)
                    Text(audioVM.audio.description2)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(20)
            }
            .frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView(audioVM: audioVM)
        }
    }
}

struct AudioPage2_Previews: PreviewProvider {
    static let audioVM = AudioViewModel(audio: Audio.data2)
    static var previews: some View {
        AudioPage(audioVM: audioVM)
            .environmentObject(AudioManager())
    }
}
