"""
List can hold multiple data (Smiliar to Array)
List is placed using square brackets []
List can hold data of different data type
We can fetch data from list by passing index
We can update data stored in list
We can insert and delete data from list, size will automatically increase and decrease

"""

list1 = [34, 43.22, "Testing", 55, 89, "Hello"]

# Fetching by index
print(list1[1])

# Range of index
print(list1[1:4])  # from 1 (included) to 4 (excluded)


print(list1[2:])  # from 2 (included) to 6 (excluded)

print(list1[:4])  # from zero (included) to  4 index (excluded)

print(list1.index("Hello"))  # It shows index 5

list1[3] = 100
print(list1)

"""
Insert Method
Syntax
list.insert(index, obj)
The insert() method inserts an element to the list at the specified index.
This method does not return any value but it inserts the given element at the given index

EXAMPLE
list.insert(i, elem)
Here, elem is inserted to the list at the ith index. All the elements after elem are shifted to the right.
"""

list1.insert(3, "ABCD")  #
print(list1[3])
print(list1)

list1.remove(89)  # In case of more than one 89 in the list, the only first one will be removed

print(list1)

list2 = [15, 37, 3.14 ,"haber1903", "duhuliye", 37]
print("The length of String2 is " + str(len(list2)))
list2.insert(2,"BJK")
print("The updated length of String2 is " + str(len(list2)))
list3 = [16.8, 55, "Araç"]

list4 = list2 + list3  # Concatenate two lists
print(list4)



