"""
Constructor is a special type of method
Created with __init()__, first argument is always self
Automatically canceled when object is created
Can take arguments
Constructors never returns any value
Constructors are used for initialization
"""
class A:
    def __init__(self,a,b,c):
        d=a+b+c
        print("This is an constructor" + "Total SUM is " + str(d))

    def hello(self):
        print("Hello World")

    def sum(self,a,b):
        c=a+b
        print("The sum is " + str(c))

    def mul(self,a,b):
        c=a*b
        return c

obj=A(10,5,5)
obj.hello()
obj.sum(4,8)
x = obj.mul(2,9)
print(x)

