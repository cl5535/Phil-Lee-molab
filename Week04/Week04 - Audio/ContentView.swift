//
//  ContentView.swift
//  Week04 - Audio
//
//  Created by Philip Lee on 2022/2/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      VStack {
        NavigationLink (destination: Page1()) {
          Text("Page1")
        }
//        NavigationLink (destination: Page2()) {
//          Text("Page2")
//        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
