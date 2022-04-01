//
//  ContentView.swift
//  Audio
//
//  Created by Philip Lee on 2022/3/21.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        AudioPage(audioVM: AudioViewModel(audio: Audio.data))
//    }
//}

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 24/255, green: 23/255, blue: 22/255, opacity: 100)
            VStack(alignment: .leading, spacing: 50) {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Maroon 5")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.bottom)
                    
                    
                    
                NavigationLink (destination: AudioPage(audioVM: AudioViewModel(audio: Audio.data))) {
                    Text("Won't Go Home Withought You")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                    VStack {
                    Divider()
                        .background(Color.white)
                    }.frame(width:300)
                
                
                NavigationLink (destination: AudioPage(audioVM: AudioViewModel(audio: Audio.data2))) {
                    Text("Beautiful Mistakes")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                    VStack {
                    Divider()
                        .background(Color.white)
                    }.frame(width:300)
                    
                    NavigationLink (destination: AudioPage(audioVM: AudioViewModel(audio: Audio.data3))) {
                        Text("Girls Like You")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    VStack {
                    Divider()
                        .background(Color.white)
                    }.frame(width:300)
                    
                    NavigationLink (destination: AudioPage(audioVM: AudioViewModel(audio: Audio.data4))) {
                        Text("Payphone")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    VStack {
                    Divider()
                        .background(Color.white)
                    }.frame(width:300)
                    
                    NavigationLink (destination: AudioPage(audioVM: AudioViewModel(audio: Audio.data5))) {
                        Text("Memories")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    
    }
            }
        }
            .frame(height: UIScreen.main.bounds.height)
            .ignoresSafeArea()
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AudioManager())
    }
}






