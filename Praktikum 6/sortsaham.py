# Module untuk menulis data file keperluan praktikum

# type dataSaham  : <IdPemilik : string, IdPT : string, Nilai : integer> 
def insSort(arr):
    for i in range(len(arr)):
        curr = i
        while curr > 0 and (data[curr][0] < data[curr-1][0]):
            arr[curr], arr[curr-1] = arr[curr-1], arr[curr]
            curr -= 1

def TulisDataSaham(namafile):
    # Menulis data kepemilikan saham ke file namafile
    # Kamus
    # f : file teks
    # Algoritma
    f = open(namafile,'w')
    row1 = input().rstrip() # IdPemilik
    # simpan sampai teks = 99999999
    while (row1 != "99999999"):
        # asumsikan selalu tulis 3 data
        f.write(row1 + "\n") # write IdPemilik
        row2 = input() # KdKul
        f.write(row2 + "\n") # write IdPT
        row3 = input() # nilai
        f.write(row3 + "\n") # write Nilai
        # simpan ke file
        row1 = input().rstrip() # next-IdPemilik
    # tulis mark
    f.write(row1) # mark
    f.close()
    return

def bacaData(namafile):
    dataSaham = []
    f = open(namafile,"r")
    line = f.readline().replace('\n','')
    if line == "99999999":
        print("File kosong")
        return 0
    else:
        while line != "99999999":
            idPemilik = line
            line = f.readline().replace('\n','')
            idPT = line
            line = f.readline().replace('\n','')
            nilai = line
            line = f.readline().replace('\n','')
            dataSaham.append((idPemilik, idPT, nilai))
    return dataSaham

namafile = input()
TulisDataSaham(namafile)
data = bacaData(namafile)
if data:
    insSort(data)
    for i in data:
        print("{},{},{}".format(i[0], i[1], i[2]))