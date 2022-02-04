module ListOfInteger where
-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 


-- NOMOR 1
isMember :: [Int] -> Int -> Bool
-- isMember menerima masukan sebuah list integer, lalu integer x, dan menghasilkan true bila x adalah salah satu anggota l.
isMember l x
    | isEmpty l = False
    | otherwise = if head l == x then True else isMember (tail l) x

-- NOMOR 2
filterGanjil :: [Int] -> [Int]
-- filterGanjil menerima masukan sebuah list integer, lalu mengembalikan elemen yang ganjil.
-- asumsi: elemen >= 0
filterGanjil l
  | null l = []
  | otherwise = if head l `mod` 2 == 1 then konso (head l) (filterGanjil (tail l)) else filterGanjil (tail l)


-- NOMOR 5
-- Praktikum 2 Nomor 5: setDiff
-- Fungsi setDiff         sumInteger(l1,l2)
setDiff :: [Int] -> [Int] -> [Int]
-- Definisi dan Spesifikasi
-- setDiff adalah fungsi yang menerima dua buah list integer dengan elemen unik dan terurut membesar dan mengembalikan sebuah list of integer yang elemnenya adalah semua elemen l1 yang tidak ada di l2.
setDiff l1 l2
   | isEmpty l1 = []
   | otherwise = if isInList l2 (head l1) then setDiff (tail l1) l2 else konso (head l1) (setDiff (tail l1) l2)

--Fungsi Tambahan: isInList
-- Menerima list dan sebuah integer lalu mengembalikan apakah integer tersebut berada di
-- list atau tidak.
isInList :: [Int] -> Int -> Bool
isInList l x
   | isEmpty l = False
   | otherwise = if head l == x then True else isInList (tail l) x 

-- Nomor 1 Responsi
-- maxList
maxList :: [Int] -> Int
maxList l
   | isOneElmt l = head l
   | otherwise = if head l < head(tail l) then maxList(tail l) else maxList(konso (head l) (tail(tail l)))
