//
//  UIImage from URL

import SwiftUI

// Array of image url strings
let imageArray = [
  "https://images.stockx.com/images/Air-Jordan-1-Retro-High-Travis-Scott-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1608736403",
  "https://images.stockx.com/images/Air-Jordan-1-Retro-Chicago-2015-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1607656901",
  "https://images.stockx.com/images/Air-Jordan-1-Retro-High-OG-Bred-Patent-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1633542046",
  "https://images.stockx.com/images/Air-Jordan-1-Retro-High-Black-Game-Royal-Toe-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1606322574",
  "https://images.stockx.com/images/Air-Jordan-1-Retro-High-White-University-Blue-Black-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1611777406",
  "https://images.stockx.com/images/Air-Jordan-1-Retro-High-Off-White-White-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1607656930",
  "https://s3.amazonaws.com/stockx-sneaker-analysis/wp-content/uploads/2019/12/off-white-1s-e1577200051912.jpg"
]

// Read in an image from the array of url strings
func imageFor( index: Int) -> UIImage {
  let urlStr = imageArray[index % imageArray.count]
  return imageFor(string: urlStr)
}

// Read in an image from a url string
func imageFor(string str: String) -> UIImage {
  let url = URL(string: str)
  let imgData = try? Data(contentsOf: url!)
  let uiImage = UIImage(data:imgData!)
  return uiImage!
}

struct Page2: View {
  var body: some View {
    VStack {
      ForEach(0 ..< 7) { index in
        Image(uiImage: imageFor(index: index))
          .resizable()
          .padding()
          .frame(width:200, height: 150.0)
          
      }
    }
  }
}

struct Page2_Previews: PreviewProvider {
  static var previews: some View {
    Page2()
  }
}

