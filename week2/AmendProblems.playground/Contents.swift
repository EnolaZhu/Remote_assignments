// 1-2
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case oildiesel = "diesel"
    func getPrice(gasoline: Gasoline) -> Double {
        var priceOfgasoline: [Gasoline: Double] = [.oil92: 46.89, .oil95: 38.90, .oil98: 56.90, .oildiesel: 78.90]
        return priceOfgasoline[gasoline] ?? 0.0
    }
}
var a = Gasoline.oil98
print(a.getPrice(gasoline: .oil98))

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
