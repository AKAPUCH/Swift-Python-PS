from collections import deque
r,c = map(int,input().split())
arr = [[-1 if i == 'W' else 0 for i in input()] for _ in range(r)]
d = [(0,-1),(1,0),(0,1),(-1,0)]
def bfs(x,y) :
    q = deque()
    visit = [[False for _ in range(c)] for _ in range(r)]
    _max = 0
    q.append((x,y,0))
    visit[x][y] = True
    while len(q) > 0 :
        cx,cy,depth = q.popleft()
        _max = max(_max,depth)
        for dx,dy in d :
            nx,ny = cx+dx,cy+dy
            if nx < 0 or nx >= r or ny < 0 or ny >= c : continue
            if arr[nx][ny] == -1 : continue
            if visit[nx][ny] : continue
            visit[nx][ny] = True
            q.append((nx,ny,depth+1))
    return _max
ans = 0
for i in range(r) :
    for j in range(c) :
        if arr[i][j] == -1 : continue
        ans = max(ans,bfs(i,j))
print(ans)