a = "Testing"
b = ""

# Method 1 to reverse a string
b = a[::-1]
print(b)

# Method 2 to reverse a string
s1 = "".join(reversed(a))
print(s1)

# Method 3 to reverse a string
s1 = ""
for x in range(len(a)-1, -1, -1):  # from 6 (included) to -1 (excluded)
    s1 = s1 + a[x]  # + means concatenate two strings

print(s1)
print("****************"*3)
if a == s1:
    print("This is a Palindrome")
else:
    print("This is Not Palindrome ")

# Method 3 to reverse a string
i = len(a) - 1
s2 = ""

while i >= 0:
    print(a[i])
    s2 = s2 + a[i]  # + means concatenate two strings
    i = i -1

print(s2)


