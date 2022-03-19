# The range() function defaults to increment the sequence by 1,
# However it is possible to specify the increment value by adding a third parameter:
# Such as range(2, 30, 3) --> 2,5,8,11 ...26 ,29


# Example 1
print("******EXAMPLE-1******")
z = 7

for i in range(1, 11):
    print(str(z) + ' * ' + str(i) + ' = ' + str(z*i))


# Example 2
print("******EXAMPLE-2******")

inputNum = input("Please Enter a number --> ")

for i in range(1, 11):
    print(str(inputNum) + ' * ' + str(i) + ' = ' + str(int(inputNum)*i))


