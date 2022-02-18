//
// NavigationView

import SwiftUI

struct Page5: View {
  var body: some View {
    NavigationView {
      List {
        ForEach(imageItems) { item in
          NavigationLink {
            ItemDetail(item: item)
          } label: {
            ItemRow(item: item)
          }
        }
      }
      .navigationTitle("Air Jordan 1")
    }
  }
}

struct ItemDetail: View {
  var item:Item
  var body: some View {
    VStack {
      Image(uiImage: imageFor(string: item.urlStr))
        .resizable()
        .aspectRatio(contentMode: .fit)
        Text(item.name)
            .fontWeight(.bold)
        Spacer()
        Text(item.detail)
            .font(.caption)
            .fontWeight(.light)
            .multilineTextAlignment(.center)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      Spacer()
    }
  }
}

struct ItemRow: View {
  var item:Item
  var body: some View {
    HStack {
      Image(uiImage: imageFor(string: item.urlStr))
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width:100, height: 100)
        Text(item.name)
            .fontWeight(.bold)
            .foregroundColor(Color.black)
      Spacer()
    }
  }
}

struct Page5_Previews: PreviewProvider {
  static var previews: some View {
    Page5()
  }
}
