// Array
// 1
var myFriends = [String]()
// 2
myFriends = ["Ian", "Bomi", "Kevin"]
// 3
myFriends.append("Michael")
// 4
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)
// 5
for friend in myFriends {
    print(friend)
}

/* 6
 I can't get the value who's index is 5 of the array.
I type "print(myFriends[5])" . Xcode show  “Fatal error: Index out of range”，
because the index value we entered exceeds the size of the Array.
*/

// 7
myFriends[0]

// 8
myFriends[myFriends.count - 1]


// Dictionary
// 9
var myCountryNumber = [String:Int]()

// 10
myCountryNumber = ["US": 1,"GB": 44, "JP": 81]

// 11
myCountryNumber.updateValue(0, forKey: "GB")

// 12 common ways
var dict1 = [String:Int]()
var dict2: [String:Int] = [:]

// 13
myCountryNumber.removeValue(forKey: "US")

