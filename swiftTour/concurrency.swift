func fetchUserID(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    return 501
}


func fetchUserName(from server: String) async -> String {
    let userID = await fetchUserID(from: server)
    if userID == 501 {
        return "John Appleseed"
    }
    return "Guest"
}


func connectUser(to server: String) async {
    async let userID = fetchUserID(from: server)
    async let username = fetchUserName(from: server)
    let greeting = await "Hello \(username), ID \(userID)"
    print(greeting)
}

// print("task start")
Task {
    await connectUser(to: "primary") // Hello Guest, ID 97
}
// print("task end")