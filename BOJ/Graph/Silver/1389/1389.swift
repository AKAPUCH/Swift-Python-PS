func bfs(_ start : Int) -> Int {
    var q = [(Int,Int)]()
    var visit = Array(repeating: false, count: n+1)
    var kevin = Array(repeating: 0, count: n+1)
    q.append((start,0))
    visit[start] = true
    while !q.isEmpty {
        let (cur,depth) = q.removeFirst()
        kevin[cur] = depth
        for next in user[cur] {
            if visit[next] {continue}
            visit[next] = true
            q.append((next,depth+1))
        }
    }
    return kevin.reduce(0,+)
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!},(n,m) = (input[0],input[1])
var user = Array(repeating: [Int](), count: n+1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!},(_from,_to) = (input[0],input[1])
    user[_from].append(_to)
    user[_to].append(_from)
}
var _minarr =  (0...n).map{[$0,bfs($0)]}
_minarr.sort{
    if $0[1] == $1[1] {return $0[0]<$1[0]}
    else {return $0[1] < $1[1]}
}
print(_minarr[1][0])