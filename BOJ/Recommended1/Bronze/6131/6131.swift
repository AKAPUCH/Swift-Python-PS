import Foundation
let n = Int(readLine()!)!
var cnt = 0
for a in 1...500 {
    if a * a - n <= 0 {continue}
	let b = sqrt(Double(a * a - n))
    if b == ceil(b) {cnt += 1}
}
print(cnt)