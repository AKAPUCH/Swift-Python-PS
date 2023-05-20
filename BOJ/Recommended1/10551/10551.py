keys = ["1","Q","A","Z","2","W","S","X","3","E","D","C","4","R","F","V","5","T","G","B",
        "6","Y","H","N","7","U","J","M","8","I","K",",","9","O","L",".","0","P",";","/","-","=","[","]","'"]
ans = [0] * 8
for x in input() :
    i = keys.index(x)
    if i//4 >= 9 : ans[7] +=1
    elif i//4 == 7 : ans[5] += 1
    elif i//4 == 8 : ans[6] += 1
    elif i//4 == 3 or i//4 == 4 : ans[3] += 1
    elif i//4 == 5 or i//4 == 6 : ans[4] += 1
    else : ans[i//4] += 1
print('\n'.join(list(map(str,ans))))
