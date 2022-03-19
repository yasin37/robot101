"""
Tuple are quite similar to list. It can hold multiple data of different data type
Placed in  (), seperated by comma

IN Tuple
--> We cannot change any value in tuple
--> We cannot increase or decrease size of tuple

Fetch Element of tuple in same way as we are doing in list
Fetch length of tuple in same way as we did in the list
"""

tuple1 = (45, 37, 3.14, "haberler", "duhuliye", 13)

print(tuple1[2])

print("The length of Tuple is " + str(len(tuple1)))


# tuple[3] = "ABCD" --> The operation cannot be done for tuple

tuple_3 = (37, 3.14, 10, "news", "ratio", 3.14)

# Count number of times a value displayed in Tuple
print(tuple_3.count(3.14))

# Find index of any value in tuple
print(tuple_3.index("ratio"))

tuple_4 = ("kartal", "gol gol", 3.14, 77)
tuple_5 = tuple_3 + tuple_4  # Concatenate two tuples
print(tuple_5)

# Print each element of tuple Method 1
for x in tuple_5:
    print(x)

# Print each element of tuple Method 2
print("***********"*10)
my_length = len(tuple_5)

for x in range(0, my_length):
    print(tuple_5[x])

