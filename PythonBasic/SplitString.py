"""
The split() method splits a string into a list.

You can specify the separator, default separator is any whitespace.

Note: When maxsplit is specified, the list will contain the specified number of elements plus one.

Syntax
string.split(separator, maxsplit)


Parameter	Description
separator	Optional. Specifies the separator to use when splitting the string. By default any whitespace is a separator
maxsplit	Optional. Specifies how many splits to do. Default value is -1, which is "all occurrences"

"""

emailAdress = "This is My Email ID turker.yasin.yazkan@huawei.com"

new_list = emailAdress.split(" ")

print(new_list)
print(" Value of the new list --> " + str(new_list) + " Length of the new list is -->  " + str(len(new_list)))


count = 0
for x in new_list:
    if x == "is":
        count = count + 1
print(" 'is' keyword is found at " + str(count) + " times in the new list")


txt = "hello,my name is Peter, I am 26 years old"

x1 = txt.split(",")
x2 = txt.split(", ")

print(x1)
print(x2)


txt = "apple#banana#cherry#orange"
# setting the maxsplit parameter to 1, will return a list with 2 elements!

x = txt.split("#",1)
print(x)

# setting the maxsplit parameter to 2, will return a list with 3 elements!

x = txt.split("#",2)
print(x)
