"""
1. Functions not taking any arguments and not returning any value
2. Functions taking some arguments but not returning value
3. Functions taking argument and return value as well
4. Functions no argument but return value

"""

def  multiply (a,b):
    c = a * b
    return c

def  addition (a,b):
    c = a + b
    print(c)

def  retData():
    a = 100
    return a


x = multiply(4, 20)
addition(x, 10)
y = retData()
print(y)

def welcome ():
    print("Hello Bro, Welcome to Python")

def sum (a,b):
    c = a+b
    print("The sum of " + str(a) + " and " + str(b) + " equals to " + str(c))

welcome()
sum(13,7)