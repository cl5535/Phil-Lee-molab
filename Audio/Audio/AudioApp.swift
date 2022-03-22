//
//  AudioApp.swift
//  Audio
//
//  Created by Philip Lee on 2022/3/21.
//

import SwiftUI

@main
struct AudioApp: App {
    @StateObject var audioManager = AudioManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
}

//tutorial: https://www.youtube.com/watch?v=_lIhoJ0KwCc

