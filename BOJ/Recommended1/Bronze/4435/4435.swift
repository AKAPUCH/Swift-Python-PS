let t = Int(readLine()!)!
let aliance = [1,2,3,3,4,10]
let hod = [1,2,2,2,3,5,10]
var ans = ""
for i in 0..<t {
    let a = zip(aliance,readLine()!.split(separator: " ").map{Int(String($0))!}).map{$0*$1}.reduce(0, +)
    let h = zip(hod,readLine()!.split(separator: " ").map{Int(String($0))!}).map{$0*$1}.reduce(0, +)
    if a - h < 0 {ans += "Battle \(i+1): Evil eradicates all trace of Good"}
    else if a - h > 0 {ans += "Battle \(i+1): Good triumphs over Evil"}
    else {ans += "Battle \(i+1): No victor on this battle field"}
    ans += "\n"
}
print(ans)