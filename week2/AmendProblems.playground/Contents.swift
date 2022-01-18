// 1-2
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case oildiesel = "diesel"
    func getPrice(_ gasoline: Gasoline.RawValue) -> Double {
        switch gasoline {
        case "92":
            return 67.50
        case "95":
            return 56.24
        case "98":
            return 66.09
        case "diesel":
            return 87.09
        default: break
        }
        return 0.0
    }
}

//// 2-1
class Pet {
    var name: String?
}

class People {
    var pet: Pet?
}
// 2-2
var people = People()
func checkPetForPeople(_ pet: Pet?) {
    guard let _pet = pet else {
        return
    }
    print("pet is \(_pet)")
}
