# EXAMPLE 1
# Take 1 number from user
# Logical OR and AND are case sensitive so it is "or" & "and"

inputNum = input("Please Enter a number --> ")
inputNum = int(inputNum)

if inputNum < 0 or inputNum > 100:
    print("Invalid Number")
else:
    print("Valid Number")

# EXAMPLE 2
# Take 1 number from user

inputNum2 = input("Please Enter second number --> ")
inputNum2 = int(inputNum2)

if inputNum2 >= 0 and inputNum2 % 2 == 0:
    print("Number2 is valid")
else:
    print("Number2 is invalid")

