arr = [int(input()) for _ in range(10)]
print(sum(arr)//len(arr))
_arr = list(map(lambda x : arr.count(x),arr))
print(arr[_arr.index(max(_arr))])

