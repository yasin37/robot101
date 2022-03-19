"""
Accessing Elements from Dictionary
While indexing is used with other data types to access values, a dictionary uses keys.
   Keys can be used either inside square brackets [] or with the get() method.

If we use the square brackets [], KeyError is raised in case a key is not found in the dictionary. On the other hand,
   the get() method returns None if the key is not found
"""

# get vs [] for retrieving elements
my_dict = {'name': 'jack', 'age': 26}

# Output: Jack
print(my_dict['name'])

# Output: 26
print(my_dict.get('age'))

# Trying to access keys which doesn't exist throws error
# KeyError
# print(my_dict['address'])

# Output None
print(my_dict.get('address'))

"""
Changing and Adding Dictionary elements
Dictionaries are mutable. We can add new items or change the value of existing items using an assignment operator.

If the key is already present, then the existing value gets updated. In case the key is not present, a new (key: value) pair is added to the dictionary.

"""

# Changing and adding Dictionary Elements
my_dict = {'name': 'Jack', 'age': 26}

# Update Value
my_dict['age'] = 33
print(my_dict)

# add item
my_dict['address'] = 'Downtown'

# Output: {'address': 'Downtown', 'age': 27, 'name': 'Jack'}
print(my_dict)

"""
Removing elements from Dictionary
We can remove a particular item in a dictionary by using the pop() method. This method removes an item with the provided key and returns the value.

The popitem() method can be used to remove and return an arbitrary (key, value) item pair from the dictionary. All the items can be removed at once, using the clear() method.

We can also use the del keyword to remove individual items or the entire dictionary itself.

"""

print("#####"*30)
# Removing elements from a dictionary

# create a dictionary
squares = {1: 1, 2: 4, 3: 9, 4: 16, 5: 25}

# remove a particular item, returns its value
# Output: 16
squares.pop(4)  # Key --> 4
print(squares)  # Value --> 16 is removed

squares.popitem()
print(squares) # --> Remove 5:25

# remove all items
squares.clear()
print(squares)

# delete the dictionary itself
del squares
# print(squares) --> Throws error "NameError: name 'squares' is not defined"

# Dictionary Methods
"""fromkeys(seq[, v]) 
   Returns a new dictionary with keys from seq and value equal to v (defaults to None).

"""
marks = {}.fromkeys(['Math', 'Engligh', 'Science'], 0)
# Output: {'English': 0, 'Math': 0, 'Science': 0}
print(marks)

"""
items()
  Return a new object of the dictionary's items in (key, value) format.
"""
print("#####"*30)
for item in marks.items():
    print(item)

print("#####"*30)

print(list(sorted(marks.keys())))

# Dictonary Comprehension
print("#####"*30)
squares = {x: x*x for x in range(6)}
print(squares)

# Dictionary Comprehension with if conditional
"""
A dictionary comprehension can optionally contain more for or if statement
An optional if statement can filter out items to form the new dictionary.
"""
print("#####"*30)
odd_squares = {x: x*x for x in range(6) if x % 2 == 1 }
print(odd_squares)

even_squares = {x: x*x for x in range(6) if x % 2 == 0}
print(even_squares)


"""
Dictionary Membership Test
We can test if a key is in a dictionary or not using the keyword in. 
   Notice that the membership test is only for the keys and not for the values.

"""
# Membership Test for Dictionary Keys
squares = {1: 1, 3: 9, 5: 25, 7: 49, 9: 81}

# Output: True
print("#####"*30)
print(2 in squares)  # False
print(3 in squares)  # True

# membership tests for key only not value
print(8 in squares)  # False
print(25 in squares)  # False
print(81 in squares)   # False


"""
Iterating Through a Dictionary
We can iterate through each key in a dictionary using a for loop.
"""
# Iterating through a Dictionary
print("#####"*30)
squares = {1: 1, 3: 9, 5: 25, 7: 49, 9: 81}

for i in squares:
    print(squares[i])

"""
Dictionary Built-in Functions
Built-in functions like all(), any(), len(), cmp(), sorted(), etc. are commonly used with dictionaries to perform different tasks.

all() --> Return True if all keys of the dictionary are True (or if the dictionary is empty).

any() --> Return True if any key of the dictionary is true. If the dictionary is empty, return False.

len() --> Return the length (the number of items) in the dictionary.

sorted() --> Return a new sorted list of keys in the dictionary.
"""

# Dictionary Built-in Functions
print("#####"*30)
squares = {0: 0, 1: 1, 2: 2, 3: 9, 4: 16, 5: 25, 7: 49, 9: 81}

print(all(squares))  # False
print(any(squares))  # True

print(len(squares))
print(sorted(squares))



















