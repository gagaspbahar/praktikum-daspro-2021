module DeretSegitiga where

-- Fungsi deret segitiga            deretSegitiga(n)
-- DEFINISI DAN SPESIFIKASI

deretSegitiga :: Int -> Int
{- deretSegitiga adalah fungsi yang menerima masukan satu buah integer n
dan menghasilkan bilangan ke-n pada deret segitiga, prekondisi n > 0-}
deretSegitiga n
    | n == 1 = 1
    | otherwise = deretSegitiga (n-1) + n

-- APLIKASI
-- deretSegitiga 1
-- deretSegitiga 5
-- deretSegitiga 100