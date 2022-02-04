module SumKelipatanX where

-- Menentukan jumlah kelipatan             sumKelipatanX(m,n,x)
-- DEFINISI DAN SPESIFIKASI
sumKelipatanX :: Int -> Int -> Int -> Int
{- sumKelipatanX adalah fungsi yang menerima masukan dua buah integer positif, serta sebuah 
integer positif lain, dan menghasilkan jumlah total bilangan kelipatan x di antara m dan n (inklusif)
dengan menggunakan ekspresi rekursif -}
sumKelipatanX m n x
    | m > n = 0
    | mod n x == 0 = sumKelipatanX m (n-x) x + n
    | otherwise = sumKelipatanX m (n-1) x

--Aplikasi
-- sumKelipatanX 1 1 1
-- sumKelipatanX 1 10 2
-- sumKelipatanX 5 14 3