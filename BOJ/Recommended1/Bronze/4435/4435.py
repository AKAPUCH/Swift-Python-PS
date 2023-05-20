t = int(input())
aliance = [1,2,3,3,4,10]
hod = [1,2,2,2,3,5,10]
ans = ""
for i in range(t) :
    a = sum([x*y for x,y in zip(aliance,list(map(int,input().split())))])
    h = sum([x*y for x,y in zip(hod,list(map(int,input().split())))])
    if a - h < 0 : ans += f"Battle {i+1}: Evil eradicates all trace of Good"
    elif a - h > 0 : ans += f"Battle {i+1}: Good triumphs over Evil"
    else : ans += f"Battle {i+1}: No victor on this battle field"
    ans+= "\n"
print(ans)