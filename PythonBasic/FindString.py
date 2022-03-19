# find: It is used to find a string into anatoher string
"""
.find() Method
Syntax
string.find(substring, start, end)

"""

# EXAMPLE 1
# returns the lowest index in the string where it can find the substring, in this case, 20

emailAddress = "turker.yasin.yazkan@huawei.com"
print(emailAddress.find("huawei"))

# EXAMPLE 2
my_string = "Where's Waldo Jaja"
result1 = my_string.find("Waldo")
print(result1)

result2 = my_string.find("Wenda")
print(result2)

# starting position zero and ending position as six, since this position is not inclusive.
result3 = my_string.find("Waldo", 0, 6)
print(result3)

# 0 index is included but 13 index is excluded
print(my_string.find("Waldo", 0, 13))


