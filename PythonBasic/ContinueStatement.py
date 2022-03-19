# Continue means Skip remaining part of the loop but do not break the loop

number = input("Please Enter the number --> ")

for i in range (1,11):
    if (int(number) * i) % 10 == 0:
        print("That is unwanted value --> " + str(int(number) * i ) + " skip remaining part of the loop")
        continue
    print("***")
    print(int(number)*i)
    print("Loop is counting")
