# String can be placed in " or "" or """
# + is a common operator to perform concatenation
# * operator can be used to display string multiple times

data_1 = "Şampiyon Beşiktaş"
print(data_1)

data_2 = 'Kara Kartal'
print(data_2)

data_3 = "Hello 'WO'RLD"
print(data_3)

data_4 = 'Hello "WO"RLD'
print(data_4)

my_address = """
             Yukarı Araç Mah
             Yazkan Apt.
             No 57:/8
            
             """
print("My Information : --- " + my_address + " ... Thank You")
print ("--------------------")

print(my_address * 3)

print ("--------------------")

name = input("Please Enter Your Name ---> ")
address = input("Please Enter Your Address ---> ")
profile = input("Please Enter Your Profile ---> ")

print("The person " + name + " lives in " + address + " working as " + profile)

