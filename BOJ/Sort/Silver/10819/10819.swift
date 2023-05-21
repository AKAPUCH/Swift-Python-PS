
let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var visit = Array(repeating: false, count: n)
var pick = Array(repeating: 0, count: n)
var _max = 0
func permutation(_ cur : Int) {
    if cur == n {
        var _sum = 0
        for i in 0..<n-1 {
            _sum += abs(arr[pick[i]] - arr[pick[i+1]])
        }
        _max = max(_max,_sum)
        return
    }
    for i in 0..<n {
        if visit[i] {continue}
        visit[i] = true
        pick[cur] = i
        permutation(cur+1)
        visit[i] = false
    }
}
permutation(0)
print(_max)