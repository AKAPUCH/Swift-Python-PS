from collections import deque
n,k = map(int,input().split())
visit = [0 for i in range(100001)]
q = deque()
q.append((n,0))
while len(q) > 0 :
    curx, cnt = q.popleft()
    if curx == k :
        print(cnt)
        break
    nx = [curx+1,curx-1,curx*2]
    for next in nx :
        if next < 0 or next > 100000 : continue
        if visit[next] != 0 : continue
        visit[next] = cnt+1
        q.append((next,cnt+1))
