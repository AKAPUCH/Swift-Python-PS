import sys
sys.setrecursionlimit(1000000)
def dfs(cur) :
    visit[cur] = True
    for next in nodes[cur] :
        if visit[next] : continue
        dfs(next)

n,m = map(int,input().split())
cnt = 0
nodes = [[] for _ in range(n+1)]
visit = [False for _ in range(n+1)]
for _ in range(m) :
    node = list(map(int,sys.stdin.readline().split()))
    nodes[node[0]].append(node[1])
    nodes[node[1]].append(node[0])
for i in range(1,n+1) :
    if visit[i] : continue
    cnt+=1
    dfs(i)
print(cnt)

