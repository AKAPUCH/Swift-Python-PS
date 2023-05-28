let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (input[0],input[1])
var visit = Array(repeating : 0, count : 100001)
var q = [(Int,Int)]()
q.append((n,0))
while !q.isEmpty {
    let (curx, cnt) = q.removeFirst()
    if curx == k {
        print(cnt)
        break
    }
    let nx = [curx+1,curx-1,curx*2]
    for next in nx {
        if next < 0 || next > 100000 {continue}
        if visit[next] != 0 {continue}
        visit[next] = cnt+1
        q.append((next,cnt+1))
    }
}
