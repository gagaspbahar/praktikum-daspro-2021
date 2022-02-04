s = input()
s = (s.split(" "))
s = [int(i) for i in s]
if s[0] > 0 and s[1] > 0:
    print(round(0.5*s[0]*s[1]))
else:
    print("Alas dan tinggi harus > 0")