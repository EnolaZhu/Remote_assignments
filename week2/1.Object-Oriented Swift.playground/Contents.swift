// 1
class Animal {
    let gender: Gender
    init(gender: Gender?) {
        self.gender = gender ?? Gender.undefined
    }
    func eat() {
        print("I eat everything!")
    }
}
enum Gender: CaseIterable {
    case male
    case female
    case undefined
}

// 2

class Elephant: Animal {
    override func eat() {
        print("I eat bananas！")
    }
}
class Tiger: Animal {
    override func eat() {
        print("I eat meat!")
    }
}
class Horse: Animal {
    override func eat() {
        print("I eat grass！")
    }
}

// 3
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}
Gender.allCases.randomElement()
let zoo = Zoo(weeklyHot: Tiger(gender: Gender.allCases.randomElement()))
let tiger = Tiger(gender: Gender.allCases.randomElement())
let elephent = Elephant(gender: Gender.allCases.randomElement())
let horse = Horse(gender: Gender.allCases.randomElement())
zoo.weeklyHot = tiger
zoo.weeklyHot = elephent
zoo.weeklyHot = horse

// 4
/*
 Struct is value type which means that everything their indtances contain is copied on assignment.if you
 want to change variable,you have to use key word "mutating".structs can't change when they are declared as
 constants.
 Class is reference type.class instances are objects with identify.class share data when used in a new
 place.Class properties remain mutable.
 */

// 5
/*
 a type method is a method that can be called directly on the type without creating an instance of that type.
 instance method can be called by creating an instance.
 */

// 6
/*
 Initialization is the process of preparing an instance of a class, structure, or enumeration for use. This
 process involves setting an initial value for each stored property on that instance and performing any
 other setup or initialization that's required before the new instance is ready for use.
 */

// 7
/*
 type method:you can use "self" to disambiguate between type properties and type method parameters
 instense method: use the "self" property to refer to the current instance within its own instance methods.
 */

// 8
/*
 reference type: instances share a single copy of the data.
 value types:each instance keeps a unique copy of its data.
 */

