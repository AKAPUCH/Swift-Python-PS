n = int(input())
cnt = 0
for a in range(2,100) :
    if a % 2 != 0 : continue
    for b in range(1,100) :
        if a+2*b+2 > n : continue
        cnt+=1
print(cnt)