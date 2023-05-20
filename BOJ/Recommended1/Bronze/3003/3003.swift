let chess = [1,1,2,2,2,8]
let inp = readLine()!.split(separator: " ").map{Int(String($0))!}
zip(chess, inp).map{$0-$1}.forEach{print($0, terminator: " ")}