module UkuranBaju where

-- Menentukan ukuran baju           ukuranBaju(t,b)
-- DEFINISI DAN SPESIFIKASI
ukuranBaju :: Int -> Int -> Int
{- ukuranBaju adalah fungsi yang menerima masukan dua buah bilangan real t dan b
dan menentukan ukuran baju yang cocok sesuai berat dan tinggi badan.-}
ukuranBaju t b
    | t <= 150 = 1
    | t > 150 && t <= 170 = if b <= 80 then 2 else 3
    | t > 170 && b <= 80 = if b <= 60 then 2 else 3
    | otherwise = 4

-- Aplikasi
-- ukuranBaju 190 85
-- ukuranBaju 145 45
-- ukuranBaju 160 75