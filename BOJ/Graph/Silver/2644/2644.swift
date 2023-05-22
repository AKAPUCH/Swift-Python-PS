func dfs(_ cur : Int,_ depth : Int) {
    visit[cur] = true
    if cur == b && ans == -1 {ans = depth}
    for next in nodes[cur] {
        if visit[next] {continue}
        dfs(next,depth+1)
    }
}
let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (a,b) = (input[0],input[1])
let m = Int(readLine()!)!
var nodes : [[Int]] = Array(repeating: [], count: n+1)
var visit : [Bool] = Array(repeating: false, count: n+1)
for _ in 0..<m {
    let node = readLine()!.split(separator: " ").map{Int(String($0))!}
    nodes[node[0]].append(node[1])
    nodes[node[1]].append(node[0])
}
var ans = -1
dfs(a,0)
print(ans)

