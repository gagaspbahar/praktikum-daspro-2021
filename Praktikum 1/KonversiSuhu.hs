module KonversiSuhu where

-- Fungsi konversi suhu            konversiSuhu(t,k)
-- DEFINISI DAN SPESIFIKASI
konversiSuhu :: Float -> Char -> Float
{- luasSegitiga adalah fungsi yang menerima masukan dua buah bilangan real a dan t
dan menghasilkan luas segitiga berdasarkan rumus luas.-}
konversiSuhu t k
    | k == 'R' || k == 'r' = 0.8 * t
    | k == 'F' || k == 'f' = 1.8 * t + 32
    | k == 'K' || k == 'k' = t + 273.15

-- Aplikasi
-- konversiSuhu 25 ‘R’
-- konversiSuhu 37 ‘F’
-- konversiSuhu (-30) ‘K’