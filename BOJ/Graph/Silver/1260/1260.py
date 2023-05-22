import sys
from collections import deque
ans = ""
def dfs(cur) :
    global ans
    visit[cur] = True
    ans += f"{cur} "
    for next in nodes[cur] :
        if visit[next] : continue
        dfs(next)
def bfs(ans) :
    q = deque()
    q.append(v)
    visit[v] = True
    ans += f"{v} "
    while len(q) > 0 :
        current = q.popleft()
        for next in nodes[current] :
            if visit[next] : continue
            visit[next] = True
            q.append(next)
            ans += f"{next} "
    print(ans)
n,m,v = list(map(int,sys.stdin.readline().split()))
visit = [False] * (n+1)
nodes = [[] for _ in range(n+1)]
for _ in range(m) :
    _from,_to = list(map(int,sys.stdin.readline().split()))
    nodes[_from].append(_to)
    nodes[_to].append(_from)
for node in nodes : node.sort()
dfs(v)
print(ans)
visit = list(map(lambda x : False, visit))
bfs("")