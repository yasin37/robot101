# Take 1 number from user

inputNum = input("Please Enter a number --> ")
inputNum = int(inputNum)

if inputNum >= 0:
    if inputNum % 2 == 0:
        print("This is Even Number")
    else:
        print("This is Odd Number")
else:
    print("This is Negative Number")