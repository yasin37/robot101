# First we need to create a list wtih some data

# Example 1
print("****** EXAMPLE-1 ******")

list1 = [1, 3, 5, 7, 10, 20, 'yasin', 'besiktas', 'kastamonu']

for x in list1:
    print(x)

# Example 2
print("****** EXAMPLE-2 ******")

for x in 'BEŞİKTAŞ':
    print(x)

# Example 3
# List with multiple numeric value
print("****** EXAMPLE-3 ******")

list2 = [43, 56, 34, 45, 77]

toplam=0
for x in list2:
    toplam = toplam + x

print("Sum is " + str(toplam))