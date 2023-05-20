t = int(input())
ans = ""
for _ in range(t) :
    input()
    arr = list(map(int,input().split()))
    ans += f"{2* (max(arr) - min(arr))}\n"
print(ans)
    