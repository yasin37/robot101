var1 = input(" Please Input a number --> ")
var1 = int(var1)

if var1 < 0:
    print("Inputted Negative Number")
elif var1 == 0:
    print("Inputted Zero Number")
elif var1 % 2 == 0:
    print("Inputted Even Number")
elif var1 % 2 == 1:
    print("Inputted Odd Number")

