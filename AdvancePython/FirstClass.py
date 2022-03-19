"""
Python is an Object Oriented Scripting Language
We can write our codes in class
Class can have variables, constants, functions and constructors
We can access class members by creating object of class

"""
class A:
   # This is class function
   def welcome(self):
      print("This is class function")


# To call any member of class, create object of that class
obj=A()

#  Call functions of class by using object
obj.welcome()
