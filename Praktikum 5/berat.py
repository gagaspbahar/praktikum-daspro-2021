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
        if temp >= 30 and temp <= 50:
            l += 1
            nvalid += 1
            sum += temp
        elif temp >= 100 and temp <= 200:
            tl += 1
            nvalid += 1
            sum += temp
        if temp >= 30 and temp <=200:
            n += 1
if n == 0:
    print("Data kosong")
else:
    print(n)
    print(l)
    print(tl)
    print(round(sum/n))