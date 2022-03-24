//
//  AudioViewModel.swift
//  Audio
//
//  Created by Philip Lee on 2022/3/21.
//

import Foundation

final class AudioViewModel: ObservableObject {
    private(set) var audio: Audio
    
    init(audio: Audio) {
        self.audio = audio
    }
}
struct Audio {
    let id = UUID()
    let title: String
    let description: String
    let description2: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    static let data = Audio(title: "Won't Go Home Without You", description: "Album: It Won't Be Soon Before Long", description2: "Artist: Maroon 5", duration: 232, track: "Maroon 5 - Won't Go Home Without You", image: "Maroon 5 - Won't be soon before long2")
}
