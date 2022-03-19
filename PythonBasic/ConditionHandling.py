# EXAMPLE_1
print("*************")
i = 10

if i > 100:
    print("Number is greater")
else:
    print("Number is Smaller")


# EXAMPLE_2
print("*************")

if 'foo' in ['foo', 'bar', 'baz']:
    print("Outer Condition is true")

    if 10 > 20:
        print("Inner Condition is 1")

    print("Between inner conditions")

    if 10 < 20:
        print("Inner Condition 2")

    print("End of outer condtion")
print("After outer condition")

# EXAMPLE_3
print("*************")

name = "Yasin"

if name == "Fred":
    print("Hello Fred")
elif name == "Xander":
    print("Hello Xander")
elif name == "Joe":
    print("Hello Joe")
elif name == "Arnold":
    print("Hello Arnold")
else:
    print("I do not know who you are!")

# EXAMPLE_4
print("*************")

# If you're using Python3.x input will return a string,so you should use int method to convert string to integer.

inputNumber = int(input("Please enter the number --> "))


if (inputNumber >= 100):
    print("The number is greater")
else:
    print("The number is smaller")



