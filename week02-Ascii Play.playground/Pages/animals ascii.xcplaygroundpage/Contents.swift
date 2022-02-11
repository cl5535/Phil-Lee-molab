

import Foundation

// Create text file and copy and paste to add - avoids string quoting requirements

// Load and print one file from bundle
let path = Bundle.main.path(forResource: "charmander.txt", ofType: nil)
let str = try String(contentsOfFile: path!, encoding: .utf8)
print(str)

// same as a function
func load(_ file :String) -> String {
  let path = Bundle.main.path(forResource: file, ofType: nil)
  let str = try? String(contentsOfFile: path!, encoding: .utf8)
  return str!
}

//Sourse:
//https://www.asciiart.eu/video-games/pokemon

