arr = sorted([int(input()) for _ in range(9)])
s = 0
e = len(arr) - 1
_fake = sum(arr) - 100
while True :
    _sum = arr[s] + arr[e]
    if _sum > _fake : e-=1
    elif _sum < _fake : s+=1
    else : break
print('\n'.join([str(v) for i,v in enumerate(arr) if i not in [s,e]]))