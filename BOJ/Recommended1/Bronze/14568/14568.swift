let n = Int(readLine()!)!
var cnt = 0
for a in 2..<100 {
    if a % 2 != 0 {continue}
    for b in 1..<100 {
        if a+2*b+2 > n {continue}
        cnt+=1
    }
}
print(cnt)