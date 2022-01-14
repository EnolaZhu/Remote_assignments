// 1
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case oildiesel = "diesel"
    func getPrice(_ gasoline: Gasoline) -> Double {
        switch gasoline {
        case .oil92:
            return 67.50
        case .oil95:
            return 56.23
        case .oil98:
            return 67.00
        case .oildiesel:
            return 87.22
        }
    }
}
var gasoline = Gasoline.oil98
print(gasoline.getPrice(gasoline))
// 67.00
print(gasoline.rawValue)
// "98"

/* associated values
 Definition：
 Let you associate a custom value or values with
 enumeration case.An enumeration can have
 raw values or associated values.
 How it works：
 The values for each case have their own data type,
 and each case can have 0 or multiple associated
 values.
 
 */

// 2
// 2-1
class Pet {
    var name: String?
}

class People {
    var pet: Pet? = Pet()
}
// 2-2
var people = People()
func checkPetForPeople() {
    guard people.pet != nil else {
        print("pet is nil.")
        return
    }
}

// 2-3
var people_1 = People()
print(people_1)
if let pet = people_1.pet {
    print(pet)
} else {
    print("pet is nil.")
}
