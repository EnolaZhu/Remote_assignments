// 1-2
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case oildiesel = "diesel"
    func getPrice() -> Double {
        switch self {
        case .oil92:
            return 90.88
        case .oil95:
            return 89.9
        case .oil98:
            return 78.99
        case .oildiesel:
            return 98.88
        }
    }
}
var a = Gasoline.oil98

// 2-1
class Pet {
    var name: String
    init(name: String) {
        self.name = name 
    }
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
