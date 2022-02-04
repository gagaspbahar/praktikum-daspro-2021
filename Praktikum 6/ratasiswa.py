# Module untuk menulis data file keperluan praktikum

# type dataSaham  : <IdPemilik : string, IdPT : string, Nilai : integer> 
def insSort(arr):
    for i in range(len(arr)):
        curr = i
        while curr > 0 and (data[curr][0] < data[curr-1][0]):
            arr[curr], arr[curr-1] = arr[curr-1], arr[curr]
            curr -= 1

def TulisDataSiswa(namafile):
    # Menulis data mahasiswa ke file namafile
    # Kamus
    # f : file teks
    # Algoritma
    f = open(namafile,'w')
    row1 = input().rstrip() # NIM
    # simpan sampai teks = 99999999
    while (row1 != "99999999"):
        # asumsikan selalu baca 3 data
        f.write(row1 + "\n") # write NIM
        row2 = input() # KdKul
        f.write(row2 + "\n") # write KdKul
        row3 = input() # nilai
        f.write(row3 + "\n") # write nilai
        # simpan ke file
        row1 = input().rstrip() # next-NIM
    # tulis NIM terakhir
    f.write(row1) # mark
    f.close()

def bacaData(namafile):
    dataMhs = []
    f = open(namafile,"r")
    line = f.readline().replace('\n','')
    if line == "99999999":
        print("File kosong")
        return 0
    else:
        while line != "99999999":
            nim = line
            line = f.readline().replace('\n','')
            kdKul = line
            line = f.readline().replace('\n','')
            nilai = line
            line = f.readline().replace('\n','')
            dataMhs.append((nim, kdKul, nilai))
    return dataMhs

namafile = input()
TulisDataSiswa(namafile)
data = bacaData(namafile)
if data:
    insSort(data)
    nimlist = []
    for i in data:
        if i[0] not in nimlist:
            nimlist.append(i[0])
    for nim in nimlist:
        sum = 0
        n = 0
        for datum in data:
            if datum[0] == nim:
                sum += int(datum[2])
                n += 1
        print("%s=%.2f" % (nim, sum/n))