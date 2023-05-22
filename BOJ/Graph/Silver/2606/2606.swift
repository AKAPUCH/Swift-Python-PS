func bfs() {
    var cnt = 0
    var q : [Int] = []
    q.append(1)
    visit[1] = true
    while !q.isEmpty {
        let cur = q.removeFirst()
        for next in nodes[cur] {
            if visit[next] {continue}
            visit[next] = true
            q.append(next)
            cnt+=1
        }
    }
    print(cnt)
    }
let n = Int(readLine()!)!
let m = Int(readLine()!)!
var nodes : [[Int]] = Array(repeating: [], count: n+1)
var visit = Array(repeating: false, count: n+1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    nodes[input[0]].append(input[1])
    nodes[input[1]].append(input[0])
}
bfs()

