var _max = 0
func recur(_ day : Int,_ money : Int) {
    if day > n+1 {return}
    if day == n+1 {
        _max = max(_max, money)
        return
    }
    recur(day+arr[day-1][0],money+arr[day-1][1])
    recur(day+1,money)
}
let n = Int(readLine()!)!
var arr : [[Int]] = []
for _ in 0..<n {arr.append(readLine()!.split(separator:" ").map{Int(String($0))!})}
recur(1,0)
print(_max)