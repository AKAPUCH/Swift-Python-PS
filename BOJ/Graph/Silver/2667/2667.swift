var ans : [String] = []
func bfs(_ x : Int,_ y : Int) {

    var cnt = 1
    var q : [(Int , Int)] = []
    q.append((x,y))
    while !q.isEmpty {
        let (cx,cy) = q.removeFirst()
        for d in 0..<4 {
            let nx = cx + dx[d]
            let ny = cy + dy[d]
            if nx < 0 || nx >= n || ny < 0 || ny >= n { continue}
            if visit[nx][ny] {continue}
            if arr[nx][ny] == 0 {continue}
            visit[nx][ny] = true
            q.append((nx,ny))
            cnt += 1
        }
    }
    ans.append(String(cnt))
}
let n = Int(readLine()!)!
var arr = [[Int]]()
var visit = Array(repeating: Array(repeating: false, count: n), count: n)
for _ in 0..<n {arr.append(readLine()!.map{Int(String($0))!})}
let dx = [0,1,0,-1]
let dy = [-1,0,1,0]
var total = 0
for i in 0..<n {
    for j in 0..<n {
        if visit[i][j] || arr[i][j] == 0 {continue}
        total += 1
        visit[i][j] = true
        bfs(i,j)
    }
}
print(total)
ans.sort(by: {Int($0)!<Int($1)!})
print(ans.joined(separator: "\n"))
