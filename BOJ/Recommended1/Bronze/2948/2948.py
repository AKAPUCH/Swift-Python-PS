# 1월 1일 기준
month = [0,0,31,59,90,120,151,181,212,243,273,304,334]
day = ["Thursday", "Friday", "Saturday", "Sunday","Monday", "Tuesday", "Wednesday"]
d,m = map(int,input().split())
print(day[(month[m]+d-1)%7])
