let n = Int(readLine()!)!
var arr : [Int] = []
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}
arr.sorted().forEach{print($0,terminator: "\n")}