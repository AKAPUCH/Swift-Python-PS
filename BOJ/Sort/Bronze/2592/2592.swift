var arr : [Int] = []
for _ in 0..<10 {arr.append(Int(readLine()!)!)}
var newarr : [(Int, Int)] = []
for (i,v) in arr.enumerated() {
    let cnt = arr.filter{$0 == v}.count
    newarr.append((v,cnt))
}
newarr.sort(by: {$0.1>$1.1})
print(arr.reduce(0,+)/arr.count,newarr[0].0,separator: "\n")


