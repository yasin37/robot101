emailAddress = "turker.yasin.yazkan@huawei.com"

print(emailAddress.replace("huawei", "apple"))

# find how many special characters ("." or "@" )

# Solution 1
count = 0
for i in emailAddress:
    if i == "." or i == "@":
        count = count+1

print("SOLUTION-1: Total Count of special characters is " + str(count))

# Solution 2

a = len(emailAddress)
b = len(emailAddress.replace(".", ""))
c = len(emailAddress.replace("@", ""))

x1 = a - b
x2 = a - c

print("SOLUTION-2: Total Count of special characters is " + str(x1+x2))