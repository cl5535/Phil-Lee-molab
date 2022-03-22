//
//  ContentView.swift
//  Audio
//
//  Created by Philip Lee on 2022/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AudioPage(audioVM: AudioViewModel(audio: Audio.data))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AudioManager())
    }
}






