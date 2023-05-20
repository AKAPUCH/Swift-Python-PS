input()
l = list(map(int,input().split()))
a = []
for i in range(len(l)-1) :
    a.append(abs(l[i+1] - l[i]))
print(min(a))