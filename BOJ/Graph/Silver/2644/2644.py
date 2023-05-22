import sys
def dfs(cur,depth) :
    global ans
    visit[cur] = True
    if cur == b and ans == -1 : 
        ans = depth
    for next in nodes[cur] :
        if visit[next] : continue
        dfs(next,depth+1)
n = int(input())
a,b = map(int,input().split())
m = int(input())
nodes = [[] for _ in range(n+1)]
visit = [False for _ in range(n+1)]
for _ in range(m) :
    node = list(map(int,sys.stdin.readline().split()))
    nodes[node[0]].append(node[1])
    nodes[node[1]].append(node[0])
ans = -1
dfs(a,0)
print(ans)

