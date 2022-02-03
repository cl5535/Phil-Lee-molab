import Cocoa


//PRACTICE 01 -- combine strings----------------------------

// Change this to your favorite food
let favoriteFood = "🍕"

// Change this to why you like it
let reason = "tasty"

// Define a string below in the pattern "I like ___ because it is ___."
let message = "I like \(favoriteFood) because it is \(reason)."


//PRACTICE 02 -- function ----------------------------------

func rowTheBoat() {
    print("Row, row, row your boat")
    print("Gently down the stream")
}

rowTheBoat()


//PRACTICE 03 -- functional song ----------------------------------

func happyBirthday() {
    print("happy birthday to you. Happy birthday to you.")
}

func happyBirthdayDear() {
    print("happy birthday dear \(name)")
}

let name = "Alex"

happyBirthday()
happyBirthdayDear()
happyBirthday()

//PRACTICE 04 -- Boogie Bot API ----------------------------------

startBot()
setBotTitle("Mobile app Development")
setBotSubtitle("By Phil Lee")

func doTheDisco() {
    fabulize()
    leftArmUp()
    leftArmDown()
}
doTheDisco()
doTheDisco()
doTheDisco()
doTheDisco()
