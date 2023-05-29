import Foundation
let dx = [0,1,0,-1]
let dy = [-1,0,1,0]
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (input[0],input[1])
var arr = [[Int]]()
for _ in 0..<n {arr.append(readLine()!.map{Int(String($0))!})}
var q = [(Int,Int)]()
q.append((0,0))

while !q.isEmpty {
    let (cx,cy) = q.removeFirst()
    for i in 0..<4 {
        let (nx,ny) = (cx+dx[i],cy+dy[i])
        if nx < 0 || nx >= n || ny < 0 || ny >= m {continue}
        if arr[nx][ny] != 1 {continue}
        if (nx,ny) == (0,0) {continue}
        arr[nx][ny] = arr[cx][cy] + 1
        if (nx,ny) == (n-1,m-1) {
            print(arr[nx][ny])
            exit(0)
        }
        q.append((nx,ny))
    }
}