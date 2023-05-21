let n = Int(readLine()!)!
var arr : [Int] = []
for _ in 0..<n {arr.append(Int(readLine()!)!)}
var cnt = 0
while true {
    let _max = arr.max()!
    let maxindex = arr.firstIndex(of: _max)!
    if maxindex != 0 {
        arr[0] += 1
        arr[maxindex] -= 1
    }
    else {
        if arr.firstIndex(of: _max)! != arr.lastIndex(of: _max)! {cnt+=1}
        break
    }
    cnt+=1
}
print(cnt)