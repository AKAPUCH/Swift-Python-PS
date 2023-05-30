let n = Int(readLine()!)!
let a = Int(UnicodeScalar("A").value)
var arr = Array(repeating: (0,0), count: n)
var first = ""
var middle = ""
var last = ""
for _ in 0..<n {
    let input = readLine()!.split(separator : " ").map{Int(UnicodeScalar(String($0))!.value)-a},(root,left,right) = (input[0],input[1],input[2])
    arr[root] = (left,right)
}
dfs(0)
print(first,middle,last, separator : "\n")

func dfs(_ cur : Int) {
    if cur == -19 {return}
    first+=String(UnicodeScalar(cur+a)!)
    dfs(arr[cur].0)
    middle+=String(UnicodeScalar(cur+a)!)
    dfs(arr[cur].1)    
    last+=String(UnicodeScalar(cur+a)!)
}