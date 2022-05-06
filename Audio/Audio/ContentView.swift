//
//  ContentView.swift
//  Audio
//
//  Created by Philip Lee on 2022/3/21.
//

import SwiftUI
import UIKit

//struct ContentView: View {
//    var body: some View {
//        AudioPage(audioVM: AudioViewModel(audio: Audio.data))
//    }
//}



struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 10)
            .frame(width: 300, height: 70)
            .background(Color.white)
            .opacity(0.75)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .scaleEffect(configuration.isPressed ? 1.1 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
//                Color(red: 24/255, green: 23/255, blue: 22/255, opacity: 100)
                
                //MARK: Background Image
                
                GifImage("M-gif2")
//                .resizable()
                .padding()
                .scaledToFill()
                .frame(width: 900, alignment: .center)
                .ignoresSafeArea()
                

                
//                Image("maroon 5 logo")
//                .resizable()
//                .padding(-20)
//                .scaledToFill()
//                .frame(width: UIScreen.main.bounds.width, alignment: .center)
//                .ignoresSafeArea()
//                .blur(radius: 5)
                
                //MARK: Blur View
                Rectangle()
                    .background(.thickMaterial)
                    .opacity(0.35)
                    .ignoresSafeArea()
                
            VStack(alignment: .leading, spacing: 50) {
                VStack(spacing: 20) {
                    
                    ZStack {
                    Text("Maroon 5")
                        .font(.system(size: 62))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                        .blur(radius: 12)
                        
                        
                        Text("Maroon 5")
                            .font(.system(size: 60))
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.bottom)
                    }
                    
                NavigationLink (destination: AudioPage(audioVM: AudioViewModel(audio: Audio.data))) {
                    Text("Won't Go Home Withought You")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .padding()

                }.buttonStyle(GrowingButton())


                    
                    VStack {
                    Divider()
                        .background(Color.white)
                    }.frame(width:300)
                
                NavigationLink (destination: AudioPage(audioVM: AudioViewModel(audio: Audio.data2))) {
                    Text("Beautiful Mistakes")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .padding()
                }.buttonStyle(GrowingButton())
                    
                    VStack {
                    Divider()
                        .background(Color.white)
                    }.frame(width:300)
                    
                    NavigationLink (destination: AudioPage(audioVM: AudioViewModel(audio: Audio.data3))) {
                        Text("Girls Like You")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .padding()
                    }.buttonStyle(GrowingButton())
                    
                    
                    VStack {
                    Divider()
                        .background(Color.white)
                    }.frame(width:300)
                    
                    NavigationLink (destination: AudioPage(audioVM: AudioViewModel(audio: Audio.data4))) {
                        Text("Payphone")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .padding()
                    }.buttonStyle(GrowingButton())
                    
                    
                    VStack {
                    Divider()
                        .background(Color.white)
                    }.frame(width:300)
                    
                    NavigationLink (destination: AudioPage(audioVM: AudioViewModel(audio: Audio.data5))) {
                        Text("Memories")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .padding()
                    }.buttonStyle(GrowingButton())
    }
            }
        }
            .frame(height: UIScreen.main.bounds.height)
            .ignoresSafeArea()
        }.accentColor(.white)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AudioManager())
    }
}



//.accentColor(.white)



