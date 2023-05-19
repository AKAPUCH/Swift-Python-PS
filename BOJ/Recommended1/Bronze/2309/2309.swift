var arr : [Int] = []
for i in 0..<9 {
    arr.append(Int(readLine()!)!)
}
arr.sort()
var s = 0
var e = arr.count - 1
while e > s {
    let sums = arr.reduce(0,+) - (arr[s] + arr[e])
    if sums > 100 {
        s += 1
    } else if sums == 100{
        break
    } else {
        e -= 1
    }
}
arr.enumerated().filter{![s,e].contains($0.0)}.forEach{print($0.1)}