var ans = ""
let input = readLine()!.split(separator : " ").map{Int(String($0))!}
let n = input[0]
let m = input[1]
let v = input[2]
var visit = Array(repeating : false, count : n+1)
var nodes = Array(repeating : [Int](), count : n+1)
for _ in 0..<m {
    let vertexs = readLine()!.split(separator: " ").map{Int(String($0))!}
    nodes[vertexs[0]].append(vertexs[1])
    nodes[vertexs[1]].append(vertexs[0])
}
for i in 1...n {nodes[i].sort()} 
dfs(v)
print(ans)
visit.indices.forEach{visit[$0] = false}
bfs()

func dfs(_ cur : Int) {
    visit[cur] = true
    ans += "\(cur) "
    for next in nodes[cur] {
        if visit[next] {continue}
        dfs(next)
    }
}
func bfs() {
    var str = ""
    var q : [Int] = []
    q.append(v)
    visit[v] = true
    str += "\(v) "
    while q.count > 0 {
        let current = q.removeFirst()
        for next in nodes[current] {
            if visit[next] {continue}
            visit[next] = true
            q.append(next)
            str += "\(next) "
        }
    }
    print(str)
}