n = 0
l = 0
tl = 0
nvalid = 0
sum = 0
ar = []
while True:
    temp = int(input())
    if temp == -999:
        break
    else:
        if temp >= 100 and temp <= 150:
            l += 1
            nvalid += 1
            sum += temp
        elif temp >= 170 and temp <= 300:
            tl += 1
            nvalid += 1
            sum += temp
        n += 1
if nvalid == 0:
    print("Data kosong")
# if nvalid == 0:
#     print(0)
else:
    print(nvalid)
    print(l)
    print(tl)
    print(round(sum/nvalid))