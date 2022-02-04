def get_max(arr, index_start):
  # mendapatkan maksimum array dari indeks indeks_start sampai selesai
    max = arr[index_start]
    for i in range(index_start, len(arr)):
        if arr[i] > max:
            max = arr[i]
    return max

def get_idx(arr, number):
   # mendapatkan index dari suatu angka dalam array
    idx = 0
    for i in range(len(arr)):
        if arr[i] == number:
            idx = i
    return idx

def swap(array, indeks_1, indeks_2):
  # swap elemen array indeks 1 dengan indeks 2
    array[indeks_1], array[indeks_2] = array[indeks_2], array[indeks_1]

def sort(arr):
  for i in range(len(arr)):
    maxArr = get_max(arr, i)
    maxIdx = get_idx(arr, maxArr)
    swap(arr, i, maxIdx)
  print(arr)

arr = []
n = int(input())
for i in range(n):
    arr.append(int(input()))
sort(arr)