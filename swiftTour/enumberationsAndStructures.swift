enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
            case .ace:
                return "ace"
            case .jack:
                return "jack"
            case .queen:
                return "queen"
            case .king:
                return "king"
            default:
                return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
print(Rank.eight) // eight
print(Rank.eight.rawValue) // eight
print(Rank.eight.simpleDescription()) // 8
print(Rank.ace.rawValue > Rank.king.rawValue) // false


if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}


enum Suit {
    case spades, hearts, diamonds, clubs

    func color() -> String {
        switch self {
            case .spades, .clubs:
                return "black"
            case .hearts, .diamonds:
                return "red"
        }
    }

    func simpleDescription() -> String {
        switch self {
            case .spades:
                return "spades"
            case .hearts:
                return "hearts"
            case .diamonds:
                return "diamonds"
            case .clubs:
                return "clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()


enum Foo {
    case `default`, bar, baz

    func simpleDescription() -> String {
        switch self {
            case .default:
                return "default"
            default:
                return "not default"
        }
    }
}
let foo = Foo.default
print(foo.simpleDescription()) // default


enum ServerResponse {
    case result(String, String)
    case failure(String)
}
let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
    case let .result(sunrise, sunset):
        print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
    case let .failure(message):
        print("Failure... \(message)")
    case .result(_, _): // never executed
        print("result")
} // Sunrise is at 6:00 am and sunset is at 8:09 pm.


