my_tuple = (45, 37, 3.14, "hello", 3.14, "my data")
my_tuple2 =(1,2,3)
print(my_tuple)
print(my_tuple[2])
print("The length of the tuple is " + str(len(my_tuple)))

print(my_tuple[1:3])
print(my_tuple.count(3.14))
print(my_tuple.index(3.14))
my_tuple3 =my_tuple + my_tuple2
print(my_tuple3)
print("****************")
for x in my_tuple3:
    print(x)


print("-----------------")
for x in range (0, len(my_tuple3)):
    print(my_tuple3[x])