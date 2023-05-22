import sys
from collections import deque
def bfs() :
    cnt = 0
    q = deque()
    q.append(1)
    visit[1] = True
    while len(q) > 0 :
        cur = q.popleft()
        for next in nodes[cur] :
            if visit[next] : continue
            visit[next] = True
            q.append(next)
            cnt+=1
    print(cnt)
n = int(input())
m = int(input())
nodes = [[] for _ in range(n+1)]
visit = [False for _ in range(n+1)]
for _ in range(m) :
    _to,_from = map(int,sys.stdin.readline().split())
    nodes[_to].append(_from)
    nodes[_from].append(_to)
bfs()

