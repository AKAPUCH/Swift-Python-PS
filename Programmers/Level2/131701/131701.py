def solution(elements):
    n = len(elements)
    ans = set()
    for i in range(1,n+1) :
        for x in range(n) :
            if i+x >= n : ans.add(sum(elements[x:n]) + sum(elements[0:(x+i)%n]))
            else : ans.add(sum(elements[x:x+i]))
    return len(ans)