//
// UIImage named from Resource folder

import SwiftUI
import UIKit

struct Page1: View {
    @State var len = 200.0
  @State var fitFlag = true
  @State var selectedImage = "circle"
  var body: some View {
    VStack() {
        Text("Air Jordan")
            .font(.title)
            .fontWeight(.black)
            .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
      Spacer()
      ZStack {
        Image(uiImage: UIImage(named: "AJ.png")!)
          .resizable()
          .aspectRatio(contentMode: fitFlag ? .fit : .fill)
          .frame(width:len - 80, height: len - 80)
        Image(systemName: selectedImage)
          .resizable()
          .frame(width:len, height: len)
      }
      Spacer()
        Slider(value: $len, in: 200.0...400.0)
      Text("scale \(len)")
      Picker("Image Name", selection: $selectedImage) {
        Text("circle").tag("circle")
        Text("square").tag("square")
        Text("diamond").tag("diamond")
      }
    }
  }
}

struct Page1_Previews: PreviewProvider {
  static var previews: some View {
    Page1()
  }
}


