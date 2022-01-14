//1
protocol PoliceMan {
    func arrestCriminals() -> Void
}
/*
struct Person: PoliceMan {
    var name: String
    func arrestCriminals() {

    }
}
 */

// 1-3
protocol ToolMan {
    func fixComputer() -> Void
}

// 1-4
struct Person: PoliceMan {
    var name: String
    var toolMan: ToolMan
    func arrestCriminals() {
        
    }
}

// 1-5
struct Engineer: ToolMan {
    func fixComputer() -> Void {
        
    }
}

// 1-6
let toolman = Engineer()
var person = Person(name: "Steven", toolMan: toolman)
