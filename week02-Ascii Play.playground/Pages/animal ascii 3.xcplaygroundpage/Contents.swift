//: [Previous](@previous)

import Foundation

// Load and print one file from bundle
let path = Bundle.main.path(forResource: "charmander.txt", ofType: nil)
let str = try String(contentsOfFile: path!, encoding: .utf8)
print("str.count:", str.count)

let strSplit = str.split(separator: "\n",omittingEmptySubsequences:false)
print("strSplit.count: \(strSplit.count)")


for index in 0...34{
    let it = strSplit[index]
    print("\(it) \(it.count) \(index)")
}

for (index,value) in strSplit.enumerated() {
    if value.count == 0 && index < 34 {
        print("index \(index)")
    }
}

let n = 35
for index in 0..<n {
    let value = strSplit[index]
    if value.count == 0 {
        print("index \(index)")
    }
}
