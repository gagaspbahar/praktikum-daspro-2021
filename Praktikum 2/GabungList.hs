module GabungList where
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

minList :: [Int] -> Int
minList l
   | isOneElmt l = head l
   | otherwise = if head l > head(tail l) then minList(tail l) else minList(konso (head l) (tail(tail l)))

index :: [Int] -> Int -> Int
index l x
    | isEmpty l = 0
    | otherwise = if head l == x then 1 else 1 + index (tail l) x

remove :: [Int] -> Int -> [Int]
remove l x
    | isEmpty l = []
    | x == 1 = tail l
    | otherwise = konso (head l) (remove (tail l) (x-1))

-- Nomor 4
gabungList :: [Int] -> [Int] -> [Int]
-- gabungList menerima masukan dua buah list of integer l1 dan l2 dan mengembalikan
-- sebuah list of integer l3. l1 adalah list dengan bilangan sembarang dan l2 adalah
-- list yang sudah terurut serta l3 adalah gabungan dari kedua list dengan isi dari
-- list tersebut sudah terurut tidak mengecil (membesar atau sama).
gabungList l1 l2
  | null l1 = l2
  | null l2 = gabungList (remove l1 (index l1 (minList l1))) [minList l1]
  | minList l1 > head l2 = konso (head l2) (gabungList l1 (tail l2))
  | otherwise = konso (minList l1) (gabungList (remove l1 (index l1 (minList l1)) ) l2)

--   | null l2 = konso (minList l1) (gabungList (remove l1 (index l1 (minList l1)) l2))
