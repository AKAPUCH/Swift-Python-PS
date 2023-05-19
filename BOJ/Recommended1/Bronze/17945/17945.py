a,b = map(int,input().split())
_max = max(b,-b)
_min = min(b,-b)
ans = ""
if a != 0 and b == 0 :
    ans+= f"{-2*a} "
for x in range(_min,_max+1) :
    if x * (x+2*a) == -b :
        ans+= f"{x} "
print(ans)