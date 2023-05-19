# n을 일단 3으로 나누기 range(1,1001)
n = int(input())
cnt = 0
for x in range(3,n-1,3) :
    for y in range(3,n-1,3) :
        if n-x-y <=0  : continue
        cnt+=1


print(cnt)