n = 0
l = 0
tl = 0
nvalid = 0
sum = 0
ar = []
while True:
    temp = int(input())
    if temp == -9999:
        break
    else:
        if temp >= 40 and temp <= 100:
            l += 1
            nvalid += 1
            sum += temp
        elif temp < 40 and temp >= 0:
            tl += 1
            nvalid += 1
            sum += temp
        n += 1
if n == 0:
    print("Data nilai kosong")
elif nvalid == 0:
    print(0)
else:
    print(nvalid)
    print(l)
    print(tl)
    print("%.2f" % (sum/nvalid))