func recur(_ cur : Int, _ pick : Int,_ _sum : Int,_ _multi : Int) {
    if cur == n {
        if pick == 0 {return}
        _min = min(_min,abs(_sum-_multi))
        return
    }
    recur(cur+1,pick+1,_sum+foods[cur][1],_multi*foods[cur][0])
    recur(cur+1,pick,_sum,_multi)
}
var _min = 1_000_000_000
let n = Int(readLine()!)!
var foods : [[Int]] = []
for _ in 0..<n {foods.append(readLine()!.split(separator: " ").map{Int(String($0))!})}
recur(0,0,0,1)
print(_min)