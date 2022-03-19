number = input("Please input your name --> ")

for i in range(1, 11):
    if int(number)*i > 50:
        print("The print number exceeds 50 so " + "the current number is " + str(int(number)*i))
        break
    print(int(number)*i)
