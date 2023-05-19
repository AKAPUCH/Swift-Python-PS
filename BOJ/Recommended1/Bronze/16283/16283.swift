let input = readLine()!.split(separator : " ").map{Int(String($0))!}
var arr : [String] = []
for x in 1..<1000 {
	if input[2]-x >= 1 && input[0]*x + input[1]*(input[2]-x) == input[3] {arr.append("\(x) \(input[2]-x)")}
	if arr.count > 1 {break}
}
if arr.count > 1 || arr.count == 0 {print(-1)}
else {print(arr[0])}