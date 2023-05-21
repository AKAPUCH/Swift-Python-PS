import sys
n = int(sys.stdin.readline())
print('\n'.join(list(map(str,sorted([int(sys.stdin.readline()) for _ in range(n)])))))