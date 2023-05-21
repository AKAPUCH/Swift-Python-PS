
n = int(input())
arr = list(map(int,input().split()))
visit = [False] * n
pick = [0] * n
_max = 0
def permutation(cur) :
    global n,arr,visit,pick,_max
    if cur == n :
        _sum = 0
        for i in range(n-1) :
            _sum += abs(arr[pick[i]] - arr[pick[i+1]])
        _max = max(_max,_sum)
        return
    for i in range(n) :
        if visit[i] : continue
        visit[i] = True
        pick[cur] = i
        permutation(cur+1)
        visit[i] = False
permutation(0)
print(_max)