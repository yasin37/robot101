# For Loop with final range
# starting from 0 by default, and increments by 1 (by default), and ends at a specified number.
# Note that range(6) is not the values of 0 to 6, but the values 0 to 5.

inputNum = input("Please Enter a Number --> ")
inputNum = int(inputNum)

for i in range(inputNum):
    print(i)

