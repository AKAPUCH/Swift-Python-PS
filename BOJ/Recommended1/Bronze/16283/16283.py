a,b,n,w = map(int, input().split())
arr = []
for x in range(1,1000) :
	if n-x >= 1 and a*x + b*(n-x) == w : arr.append(f"{x} {n-x}")
	if len(arr) > 1 : break
if len(arr) > 1 or len(arr) == 0 : print(-1)
else : print(arr[0])