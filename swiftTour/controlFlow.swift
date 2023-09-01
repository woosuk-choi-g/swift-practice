let individualScores = [75, 43, 103, 87, 12,]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore) // 11


// error in 5.8?
// let scoreDecoration = if teamScore > 10 {
//     "🎉"
// } else {
//     ""
// }
// print("Score:", teamScore, scoreDecoration)


var optionalString: String? = "Hello"
print(optionalString == nil) // false

var optionalName: String? = "John Appleseed"
// var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)


let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting)


if let nickname {
    print("Hey, \(nickname)") // never executed
}


let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
} // Is it a spicy red pepper?


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest) // 25


var n = 2
while n < 100 {
    n *= 2
}
print(n) // 128

var m = 2
repeat {
    m *= 2
} while m < 100
print(m) // 128


var total = 0
for i in 0..<4 {
    total += i
}
print(total) // 6


func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
// greet("Bob", "Tuesday") // error: missing argument labels 'person:day:' in call
greet(person: "Bob", day: "Tuesday") // Hello Bob, today is Tuesday.


func greet(_ person: String, on day: String) -> String {
    return "hello \(person), today is \(day)."
}
greet("Jogn", on: "Wednesday") // hello Jogn, today is Wednesday.


func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }

        sum += score
    }
    // return min, max, sum // error: cannot convert return expression of type 'Int'
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum) // 120
print(statistics.2) // 120


// let aTuple: (Int, Int, Int) = (1, 2, last: 3) // successfully compiled, but it have nameless memebers instead of an explicit name
let aTuple: (Int, Int, last: Int) = (1, 2, last: 3)
print(aTuple.last)


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen() // 15


func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7) // 8


func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen)) // true


numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    print(result)
    return result
}) // run loop, but not store result


let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)


let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)


var pointingSelf: [Any] = [pointingSelf]
print(pointingSelf.count)

var pointingSelf2: [Any] = []
pointingSelf2.append(pointingSelf2)
print(pointingSelf2)