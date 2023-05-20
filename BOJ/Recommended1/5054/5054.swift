let t = Int(readLine()!)!
var ans = ""
for _ in 0..<t {
    readLine()
    let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
    ans += "\(2*(arr.max()! - arr.min()!))\n"
}
print(ans)
    