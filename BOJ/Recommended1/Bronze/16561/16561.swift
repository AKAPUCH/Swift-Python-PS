let n = Int(readLine()!)!
var cnt = 0
for x in stride(from: 3, through: n-1, by: 3) {
    for y in stride(from: 3, through: n-1, by: 3) {
        if n-x-y <= 0  {continue}
        cnt+=1
    }
}
print(cnt)