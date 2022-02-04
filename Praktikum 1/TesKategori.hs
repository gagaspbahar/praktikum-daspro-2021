module TesKategori where

-- Fungsi tes kategori          tesKategori(t,b,k)
-- DEFINISI DAN SPESIFIKASI
tesKategori :: Int -> Int -> Int -> Bool
{- tesKategori adalah fungsi yang menerima input 3 buah integer, dengan t mewakili 
tinggi badan seseorang (dalam cm, bernilai > 0), b mewakili berat badan seseorang 
(dalam kg, bernilai > 0), dan k mewakili suatu kategori kendaraan atraksi (bernilai 0..4). 
Fungsi menghasilkan nilai true jika orang dengan tinggi t dan berat b, boleh menaiki 
kendaraan atraksi dengan kategori k sesuai dengan ketentuan di atas. Jika tidak boleh 
menaiki kategori apa pun, berarti nilai k = 0.-}

tesKategori t b k
    | k == 4 = (t > 100) && (b <= 150)
    | k == 1 = (t <= 100) && (b <= 150)
    | k == 2 = (t <= 100 && b > 30 && b <= 150) || (b > 150 && t <= 200 && t > 100) || (t > 100 && b <= 150)
    | k == 3 = (b > 150 && t > 100 && t <= 200) || (t > 100 && b <= 150)
    | k == 0 = not((tesKategori t b 1) || (tesKategori t b 2) || (tesKategori t b 3) || (tesKategori t b 4))

-- Aplikasi
-- tesKategori 120 80 1
-- tesKategori 120 80 4
-- tesKategori 201 160 0