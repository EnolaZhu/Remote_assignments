// 1
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for num in lottoNumbers.count - 3 ... lottoNumbers.count - 1 {
    print(lottoNumbers[num])
}

// 2
for num in lottoNumbers.reversed() {
    print(num)
}
lottoNumbers.filter { i in
    return i % 2 == 0
}

for num in lottoNumbers.filter({ item in
    return item % 2 == 0
}) {
    print(num)
}

// 3

let lastCount = 3
var i = 0
while i < lastCount {
    print(lottoNumbers[lottoNumbers.count - lastCount + i])
    i += 1
}

var k = 1
while k <= lottoNumbers.count {
    print(lottoNumbers[lottoNumbers.count - k])
    k += 1
}

while i < lottoNumbers.count - 1 {
    print(lottoNumbers[i])
    i += 2
}

// 4
var a = 1
repeat {
    print(lottoNumbers[lottoNumbers.count - a])
    a += 1
} while a <= lottoNumbers.count

repeat {
    print(lottoNumbers[i])
    i += 2
} while i < lottoNumbers.count

 5
/* while: distinguish the condition firstly，then execute the code inside the curly braces.
 repeat-while: execute the code inside the curly braces firstly, then distinguish the condition.
 so repeat-while execute the code at least even through don‘t conform to the condition.
*/

// 6
var isRaining = true
if isRaining {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

// 7
var allJob = [1: "Member", 2: "Team Leader", 3: "Manager", 4: "Director"]
var jobLevel = 2
switch allJob.keys.contains(jobLevel) {
case true:
    print(allJob[jobLevel])
default:
    print("We don't have this job")
}

