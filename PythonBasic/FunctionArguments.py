"""
Required Arguments
Keyword Arguments
Default Arguments

"""

# Required Arguments
def  takeInput(a,b):
    c=a+b
    print(a)
    print(b)
    print("Sum of Values " + str(c))


# takeInput(10,13,2) , takeInput(10) throw error
takeInput(10,13)

# Keyword Arguments
# takeInput(a=100), takeInput(a=100,b=25,c=4) throw error
takeInput(b=100,a=25)  # 25 assign to a and 100 assigns to b
takeInput(a=13,b=7)    # 13 assign to a and 7 assigns to b


# Default Arguments
# When you use default value all the arguments after that must have default value
# def  takeDefInput(a=10,b): throws errors because b also need to have default value
# Assume that the function has three arguments takeDefInput(a,b=10,C=30) is OK
def  takeDefInput(a,b=10):
    c=a+b
    print("Sum of Values " + str(c))

# Default Arguments Usage
takeDefInput(120,200)
takeDefInput(5)  # 5 assigns to argument a





