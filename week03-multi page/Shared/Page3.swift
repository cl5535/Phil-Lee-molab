//
//  Item struct for more info about image

import SwiftUI

import UIKit

struct Item : Identifiable {
  let id = UUID()
  var urlStr:String
  var name:String
    var detail:String
}

// Array of image url strings
let imageItems:[Item] = [
    Item(urlStr: imageArray[0], name:"AJ1 Travis Scott", detail:"Grab a pack of coffee beans to match the Jordan 1 Retro High Travis Scott. This AJ1 comes with a brown upper plus white accents, black Nike Swoosh, sail midsole, and a brown sole. These sneakers released in May 2019 and retailed for $175."),
  Item(urlStr: imageArray[1], name:"AJ1 Chicago", detail:"The shoe that started it all. In 1984, Nike unveiled the Nike Air Jordan and captivated the world. The design merged sports and fashion worlds with its luxe appeal, and now is a street classic. In 2015, Jordan Brand reissued the Chicago colorway in its original form with the Jordan 1 Retro Chicago (2015)."),
  Item(urlStr: imageArray[2], name:"AJ1 Patent Bred", detail:"The Air Jordan 1 High Bred Patent features black and red patent leather upper with signature weaved Nike Air tongue labels. From there, a classic Wings logo on the collar and a white with red Air sole complete the retro design.\nThe Air Jordan 1 High Bred Patent releases in December of 2021 and retails for $170."),
  Item(urlStr: imageArray[3], name:"AJ1 Royal Toe", detail:"Jordan Brand adds a twist to a classic with the Jordan 1 Retro High Royal Toe, now available on StockX. Releases like the Shattered Backboard 1 and Bred Toe have shifted all eyes on Jordan’s “Black Toe” inspired colorways. The Royal Toe takes inspiration from the original Jordan 1 Royal colorway (which released in 1985) and adds design elements of the Black Toe 1 to create a familiar, but new dialogue."),
  Item(urlStr: imageArray[4], name:"AJ1 University Blue Black", detail:"Jordan Brand paid homage to MJ’s alma mater with the Air Jordan 1 High University Blue. The University Blue colorway is prominent in the Jordan 1’s history. The first UNC-inspired Jordan 1 dates back to 1985 when the Jordan 1 debuted. Since then, there have been numerous iterations of the UNC 1, most recently the Jordan 1 Retro High Fearless UNC To Chicago. Jumpman is building off of its past and switching it up this week with a new iteration."),
  Item(urlStr: imageArray[5], name:"AJ1 Off-White White", detail:"Release Date 3/2/2018"),
  Item(urlStr: imageArray[6], name:"AJ1 Off-White Chicago", detail:"The Off-White x Air Jordan 1 Retro High OG was one of the most highly anticipated footwear collaborations of 2017. It marked the first time Virgil Abloh, founder of the Milan-based fashion label and Jordan Brand had teamed up. Nicknamed The 10 edition, this pair comes in the original Chicago-themed white, black and varsity red colorway. Featuring a white, red and black-based deconstructed leather upper with a Swooshless medial side branded with Off-White for Nike Air Jordan 1, Beaverton, Oregon, USA © 1985.")
]


struct Page3: View {
  var body: some View {
    VStack {
      ForEach(imageItems) { item in
        HStack {
          Image(uiImage: imageFor(string: item.urlStr))
            .resizable()
            .padding(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            .frame(width:150, height: 100)
            Text(item.name)
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
          Spacer()
        }
      }
    }
  }
}

struct Page3_Previews: PreviewProvider {
    static var previews: some View {
        Page3()
    }
}
