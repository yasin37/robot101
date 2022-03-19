
class A:
    def hello(self):
        print("Hello World")

    def sum(self, a, b):
        c = a + b
        print("Sum = " + str(c))

    def mul(self, a, b):
        c = a * b
        return c

obj=A()

obj.hello()
obj.sum(4,10)
x = obj.mul(12,5)
print(x)
