
let month = [0,0,31,59,90,120,151,181,212,243,273,304,334]
let day = ["Thursday", "Friday", "Saturday", "Sunday","Monday", "Tuesday", "Wednesday"]
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = input[1]
let d = input[0]
print(day[(month[m]+d-1)%7])
