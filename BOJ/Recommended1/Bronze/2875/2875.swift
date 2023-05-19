let input = Dictionary(uniqueKeysWithValues: zip(["n", "m", "k"], readLine()!.split(separator: " ").map { Int($0)! }))

var _max = 0
for x in 0...input["k"]! {
    _max = max(_max,min((input["n"]!-x) / 2, (input["m"]!-input["k"]!+x)))
}
print(_max)