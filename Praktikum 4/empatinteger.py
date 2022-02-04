# Nama: Gagas Praharsa Bahar
# NIM: 16520289

# Program EmpatInteger
# Input: 4 integer: A, B, C, D
# Output: Sifat integer dari A, B, C, D (positif/negatif/nol) 
#         Jika semua integer positif, tampilkan:
#         nilai maksimum, minimum, dan mean olympic
 
# KAMUS
# variabel
#    A, B, C, D : int
#    mo : real
 
# PROCEDURE DAN FUNCTION
def CekInteger (x):
# I.S.: x terdefinisi, bertype int
# F.S.: Jika x positif, maka tertulis di layar: POSITIF
#       Jika x negatif, maka tertulis di layar: NEGATIF
#       Jika x nol, maka tertulis di layar: NOL
# Tuliskan realisasi prosedur CekInteger di bawah ini
# KAMUS LOKAL
# x = int
    if x == 0:
        print("NOL")
    elif x > 0:
        print("POSITIF")
    else:
        print("NEGATIF")
              
def Max (a, b, c, d):
# menghasilkan nilai terbesar di antara a, b, c, d (integer)
# Tuliskan realisasi fungsi Max di bawah ini
# KAMUS LOKAL
# ar = array bilangan (int)
# max = int maximum sementara
    ar = [a,b,c,d]
    max = a
    for i in range(4):
        if ar[i] > max:
            max = ar[i]
    return max
            
def Min (a, b, c, d):
# menghasilkan nilai terkecil di antara a, b, c, d (integer)
# Tuliskan realisasi fungsi Min di bawah ini
# KAMUS LOKAL
# ar = array bilangan (int)
# min = int minimum sementara
    ar = [a,b,c,d]
    min = a
    for i in range(4):
        if ar[i] < min:
            min = ar[i]
    return min

def IsAllPositif (a, b, c, d):
# menghasilkan true jika a, b, c, d seluruhnya positif
# false jika tidak
# Tuliskan realisasi fungsi IsAllPositif di bawah ini
    ar = [a,b,c,d]
    for i in range(4):
        if ar[i] <= 0:
            return False
    return True
            
# PROGRAM UTAMA
# Tidak boleh diubah-ubah
# Input
A = int(input())
B = int(input())
C = int(input())
D = int(input())

# Menuliskan sifat integer
CekInteger(A)
CekInteger(B)
CekInteger(C)
CekInteger(D)

# Penulisan maksimum, minimum, dan mean olympic
if (IsAllPositif(A,B,C,D)):
    print(Max(A,B,C,D))
    print(Min(A,B,C,D))
    mo = (A + B + C + D - Max(A,B,C,D) - Min(A,B,C,D)) / 2
    print("%.2f" % mo)
