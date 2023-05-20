let keys = ["1","Q","A","Z","2","W","S","X","3","E","D","C","4","R","F","V","5","T","G","B",
        "6","Y","H","N","7","U","J","M","8","I","K",",","9","O","L",".","0","P",";","/","-","=","[","]","'"]
var ans : [Int] = Array(repeating : 0, count : 8)
let arr = readLine()!.map{String($0)}
for x in arr {
    let i : Int! = keys.firstIndex(of: x)
    if i/4 >= 9 {ans[7] += 1}
    else if i/4 == 7 {ans[5] += 1}
    else if i/4 == 8 {ans[6] += 1}
    else if i/4 == 3 || i/4 == 4 {ans[3] += 1}
    else if i/4 == 5 || i/4 == 6 {ans[4] += 1}
    else {ans[i/4] += 1}
}
print(ans.map{String($0)}.joined(separator: "\n"))
