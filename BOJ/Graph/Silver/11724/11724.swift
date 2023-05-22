func dfs(_ cur : Int) {
    visit[cur] = true
    for next in nodes[cur] {
        if visit[next] {continue}
        dfs(next)
    }
}
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (input[0],input[1])
var nodes : [[Int]] = Array(repeating: [], count: n+1)
var visit : [Bool] = Array(repeating: false, count: n+1)
for _ in 0..<m {
    let node = readLine()!.split(separator: " ").map{Int(String($0))!}
    nodes[node[0]].append(node[1])
    nodes[node[1]].append(node[0])
}
var cnt = 0
for i in 1...n {
    if visit[i] {continue}
    cnt+=1
    dfs(i)
}
print(cnt)

