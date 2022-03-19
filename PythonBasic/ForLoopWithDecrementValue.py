# Such as range(20, 0, -3) --> 20, 17, 14, 11, ... 5,2

# Example 1
print("****** EXAMPLE-1 ******")

for x in range(10, 0, -1):
    print(x)

# Example 2
print("****** EXAMPLE-2 ******")

for x in range(20, 0, -3):
    print(x)

# Example 3
# Print a reverse table by taking number from user

print("****** EXAMPLE-3 ******")

inputNum = input("Please Enter a Number --> ")

for x in range (10, 0, -1):
    print(int(inputNum)*x)
