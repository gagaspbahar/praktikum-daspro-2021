T = int(input())
if T < 0:
    print("PADAT")
elif T == 0:
    print("ANTARA PADAT-CAIR")
elif (T > 0 and T < 100):
    print("CAIR")
elif (T > 100):
    print("GAS")
else:
    print("ANTARA CAIR-GAS")