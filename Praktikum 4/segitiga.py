# Nama : Gagas Praharsa Bahar
# NIM : 16520289

# Program GambarSegitiga
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar segitiga sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

# KAMUS
# Variabel
#    N : int

def GambarSegitiga(N):
# I.S. N > 0 dan N ganjil
# F.S. Gambar segitiga dengan tinggi sebesar N sesuai spesifikasi soal
# Lengkapilah kamus lokal dan algoritma prosedur di bawah ini
    for i in range(1,N+1,2):
        print(' '*(N-i) + '*'*i)
    for i in range(N-2,0,-2):
        print(' '*(N-i) + '*'*i)


def IsValid(N):
# menghasilkan true jika N positif dan ganjil, false jika tidak
# Lengkapilah kamus lokal dan algoritma fungsi di bawah ini
    return(N > 0 and N % 2 == 1)


# ALGORITMA PROGRAM UTAMA
N = int(input())
if (IsValid(N)):  # lengkapi dengan pemanggilan fungsi IsValid
    GambarSegitiga(N)   # lengkapi dengan pemanggilan prosedur GambarSegitiga
else: # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")