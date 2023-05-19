# 남1, 여2 , 인턴 k 총 남 m, 여 n
n,m,k = map(int,input().split())
_max = 0
for x in range(0,k+1) :
    _max = max(_max,min((n-x) // 2, (m-k+x)))
print(_max)
