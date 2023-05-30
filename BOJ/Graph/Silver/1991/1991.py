n = int(input())
a = ord("A")
arr = [(0,0) for _ in range(n)]
first = ""
middle = ""
last = ""
def dfs(cur) :
    global first,middle,last
    if cur == -19 : return
    first+=chr(cur+a)
    dfs(arr[cur][0])
    middle+=chr(cur+a)
    dfs(arr[cur][1])    
    last+=chr(cur+a)

for i in range(n) :
    root,left,right = map(ord,input().split())
    arr[root-a] = (left-a,right-a)
print(arr)

dfs(0)
print(first,middle,last, sep = '\n')