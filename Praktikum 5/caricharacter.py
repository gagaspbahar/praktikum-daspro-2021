while True:
    N = int(input())
    if 0 < N <= 100:
        break
    else:
        print("Masukan salah. Ulangi!")

ar = []
for i in range(N):
    temp = input()
    ar.append(temp)
cc = input().lower()
if cc not in "slx":
    print("Tidak diproses")

if cc == 's':
    jml = 0
    for i in range(len(ar)):
        if 97 <= ord(ar[i]) <= 122:
            if jml == 0:
                save = ar[i]
                saveind = i+1
            jml += 1
    if jml == 0:
        print("Tidak ada huruf kecil")
    else:
        print(saveind, save)

if cc == 'l':
    jml = 0
    for i in range(len(ar)):
        if 65 <= ord(ar[i]) <= 90:
            if jml == 0:
                save = ar[i]
                saveind = i+1
            jml += 1
    if jml == 0:
        print("Tidak ada huruf besar")
    else:
        print(saveind, save)

if cc == 'x':
    jml = 0
    for i in range(len(ar)):
        if (not 65 <= ord(ar[i]) <= 90) and (not 97 <= ord(ar[i]) <= 122):
            if jml == 0:
                save = ar[i]
                saveind = i + 1
            jml += 1
    if jml == 0:
        print("Semua huruf")
    else:
        print(saveind, save)    
