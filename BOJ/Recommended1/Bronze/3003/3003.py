chess = [1,1,2,2,2,8]
inp = list(map(int,input().split()))
print(' '.join(list(map(str,[x - y for x,y in zip(chess,inp)]))))