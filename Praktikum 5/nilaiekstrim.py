n = int(input())
ar = []
for i in range(n):
    temp = int(input())
    ar.append(temp)
x = int(input())
min = ar[0]
max = ar[0]
for i in range(n):
    if ar[i] < min:
        min = ar[i]
    if ar[i] > max:
        max = ar[i]
if x == max:
    print("maksimum")
if x == min:
    print("minimum")
if (x != max and x != min) and x in ar:
    print("N#A")
if x not in ar:
    print(x, "tidak ada")