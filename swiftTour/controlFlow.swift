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


// error in 5.8
// let scoreDecoration = if teamScore > 10 {
//     "🎉"
// } else {
//     ""
// }
// print("Score:", teamScore, scoreDecoration)