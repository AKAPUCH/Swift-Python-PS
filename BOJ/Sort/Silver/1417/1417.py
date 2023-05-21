n = int(input())
arr = [int(input()) for _ in range(n)]
cnt = 0
while True :
    _max = max(arr)
    maxindex = arr.index(_max)
    if maxindex != 0 :
        arr[0] += 1
        arr[maxindex] -= 1
    else :
        if arr.count(_max) > 1 :
            cnt+=1
        break
    cnt+=1
print(cnt)