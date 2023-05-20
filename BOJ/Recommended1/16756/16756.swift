let leng = Int(readLine()!)!
let l = readLine()!.split(separator: " ").map{Int(String($0))!}
var a : [Int] = []
for i in 0..<leng-1 {
    a.append(abs(l[i+1] - l[i]))
}
print(a.min()!)