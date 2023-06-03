let input = readLine()!.split(separator: " ").map{Int(String($0))!},(r,c) = (input[0],input[1])
let arr = (0..<r).map{_ in readLine()!.map{$0 == "W" ? -1 : 0}}
let d = [(0,-1),(1,0),(0,1),(-1,0)]
func bfs(_ x : Int,_ y : Int) -> Int {
    var q = [(Int,Int,Int)]()
    var visit = Array(repeating: Array(repeating: false, count: c), count: r)
    var maxs = 0
    q.append((x,y,0))
    visit[x][y] = true
    while !q.isEmpty {
        let (cx,cy,depth) = q.removeFirst()
        maxs = max(maxs,depth)
        for (dx,dy) in d {
            let (nx,ny) = (cx+dx,cy+dy)
            if nx < 0 || nx >= r || ny < 0 || ny >= c {continue}
            if arr[nx][ny] == -1 {continue}
            if visit[nx][ny] {continue}
            visit[nx][ny] = true
            q.append((nx,ny,depth+1))
        }
    }
    return maxs
}
var ans = 0
for i in 0..<r {
    for j in 0..<c {
        if arr[i][j] == -1 {continue}
        ans = max(ans,bfs(i,j))
    }
}
print(ans)