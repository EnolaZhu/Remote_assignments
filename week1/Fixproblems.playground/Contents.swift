// Fix
// Basic
// 4
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

/*
==
*/

// Control Flow
// common setting
let lottoNumbers = [10, 9, 8, 7, 6, 5]
let lastIndex = lottoNumbers.count - 1
var i = 0
//3-2
while i <= lastIndex {
    print(lottoNumbers[lastIndex - i])
    i += 1
}


while i < lastIndex {
    print(lottoNumbers[i])
    i += 2
}

// 4-2

repeat {
    print(lottoNumbers[lastIndex - i])
    i += 1
} while i <= lastIndex


repeat {
    print(lottoNumbers[i])
    i += 2
} while i <= lastIndex

// Function
func multiply(a: Int,b: Int = 10) {
    print(a*b)
}



// Modify
// Collection
//solution
var myFriends = ["Kevin", "Ian", "Bomi", "Michael"]

// 7
myFriends.first

// 8
myFriends.last

// 11
//solution
var myCountryNumber = ["US": 1,"GB": 44, "JP": 81]
myCountryNumber["GB"] = 0


// 13
myCountryNumber["GB"] = nil

