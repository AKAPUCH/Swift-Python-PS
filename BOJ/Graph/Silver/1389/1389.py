import sys
from collections import deque
def bfs(start) :
    q = deque()
    visit = [False for _ in range(n+1)]
    kevin = [0 for _ in range(n+1)]
    q.append((start,0))
    visit[start] = True
    while len(q) > 0 :
        cur,depth = q.popleft()
        kevin[cur] = depth
        for next in user[cur] :
            if visit[next] : continue
            visit[next] = True
            q.append((next,depth+1))
    return sum(kevin)

n,m = map(int,input().split())
_minarr = []
user = [[] for _ in range(n+1)]
for _ in range(m) :
    _from,_to = map(int,sys.stdin.readline().split())
    user[_from].append(_to)
    user[_to].append(_from)
for i in range(n+1) : _minarr.append((i,bfs(i)))
_minarr.sort(key=lambda x: (x[1],x[0]))
print(_minarr[1][0])



