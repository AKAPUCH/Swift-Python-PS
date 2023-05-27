from collections import deque
ans = []
def bfs(x,y) :
    global ans
    cnt = 1
    q = deque()
    q.append((x,y))
    while len(q) > 0 :
        cx,cy = q.popleft()
        for d in range(4) :
            nx = cx + dx[d]
            ny = cy + dy[d]
            if nx < 0 or nx >= n or ny < 0 or ny >= n : continue
            if visit[nx][ny] : continue
            if arr[nx][ny] == 0 : continue
            visit[nx][ny] = True
            q.append((nx,ny))
            cnt += 1
    ans.append(str(cnt))

n = int(input())
arr = [list(map(int,input())) for _ in range(n)]
visit =[[False] * n for _ in range(n)]
dx = [0,1,0,-1]
dy = [-1,0,1,0]
total = 0
for i in range(n) :
    for j in range(n) :
        if visit[i][j] or arr[i][j] == 0 : continue
        total += 1
        visit[i][j] = True
        bfs(i,j)
print(total)
ans.sort(key=lambda x: int(x))
print('\n'.join(ans))
