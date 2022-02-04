module AlternateSort where

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 



alternateSort :: [Int] -> [Int]
alternateSort l
    | isEmpty l = []
    | length l == 1 = l
    | otherwise = [smallestElement l, largestElement l] ++ alternateSort(let l1 = remove l (index l (smallestElement l)) in remove l1 (index l1 (largestElement l1)))

index :: [Int] -> Int -> Int
index l x
    | isEmpty l = 0
    | otherwise = if head l == x then 1 else 1 + index (tail l) x

remove :: [Int] -> Int -> [Int]
remove l x
    | isEmpty l = []
    | x == 1 = tail l
    | otherwise = konso (head l) (remove (tail l) (x-1))

smallestElement :: [Int] -> Int
smallestElement l
    | isEmpty l = 0
    | length l == 1 = head l
    | length l == 2 = if head l > last l then last l else head l
    | otherwise = if head l < head(tail l) then smallestElement (konso (head l) (tail(tail l))) else smallestElement (tail l)

largestElement :: [Int] -> Int
largestElement l
    | isEmpty l = 0
    | length l == 1 = head l
    | length l == 2 = if head l < last l then last l else head l
    | otherwise = if head l > head(tail l) then largestElement (konso (head l) (tail(tail l))) else largestElement (tail l)