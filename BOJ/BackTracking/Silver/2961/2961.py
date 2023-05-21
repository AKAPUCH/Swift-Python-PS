_min = 1_000_000_000
def recur(cur,pick,_sum,_multi) :
    global _min
    if cur == n :
        if pick == 0 : return
        _min = min(_min,abs(_sum-_multi))
        return
    recur(cur+1,pick+1,_sum+foods[cur][1],_multi*foods[cur][0])
    recur(cur+1,pick,_sum,_multi)
n = int(input())
foods = [list(map(int,input().split())) for _ in range(n)]
recur(0,0,0,1)
print(_min)