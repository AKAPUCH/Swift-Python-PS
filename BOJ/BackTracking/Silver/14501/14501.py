_max = 0
def recur(day,money) :
    global _max
    if day > n+1 : return
    if day == n+1 :
        _max = max(_max, money)
        return
    recur(day+arr[day-1][0],money+arr[day-1][1])
    recur(day+1,money)
n = int(input())
arr = [list(map(int,input().split())) for _ in range(n)]
recur(1,0)
print(_max)