import Foundation
enum GuessNumberGameError: Error {
    case wrongNumber
}
class GuessNumerGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
}
        print("Guess the right number: \(targetNumber)")
    }
}

try? GuessNumerGame().guess(number: 20)
// or
/*
do {
    try GuessNumerGame().guess(number: 20)
} catch GuessNumberGameError.wrongNumber {
    print("It's a wrong number!")
}
*/
