import sys
from collections import deque
dx = [0,1,0,-1]
dy = [-1,0,1,0]
n,m = map(int,input().split())
arr = [list(map(int,sys.stdin.readline().rstrip())) for _ in range(n)]
q = deque()
q.append((0,0))

while len(q) > 0 :
    cx,cy = q.popleft()
    for i in range(4) :
        nx,ny = cx+dx[i],cy+dy[i]
        if nx < 0 or nx >= n or ny < 0 or ny >= m : continue
        if arr[nx][ny] != 1 : continue
        if (nx,ny) == (0,0) : continue
        arr[nx][ny] = arr[cx][cy] + 1
        if (nx,ny) == (n-1,m-1) :
            print(arr[nx][ny])
            exit(0)
        q.append((nx,ny))