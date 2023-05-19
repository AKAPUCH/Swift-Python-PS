let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let a = input[0]
let b = input[1]
let bMin = min(b,-b)
let bMax = max(b,-b)
if a != 0 && b == 0 {print(-2*a,terminator: " ")}
for x in bMin...bMax {
    if x * (x+2*a) == -b {print(x,terminator: " ")}
}