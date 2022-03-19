# import string library function
import string
# Importing random to generate
# random string sequence
import random

""" 
    Example 1 
    Make sure to import string library function inorder to use ascii_lowercase. 
"""

# Storing the value in variable result
result = string.ascii_lowercase

# Printing the value
print(result)

""" 
    Example 2 
    Given code checks if the string input has only lower ASCII characters.
"""


# Function checks if input string
# has lower only ascii letters or not
def check(value):
    for letter in value:
        # If anything other than lower ascii
        # letter is present, then return
        # False, else return True
        if letter not in string.ascii_lowercase:
            return False
    return True


# Driver Code
input1 = "GeeksForGeeks"

print(input1 + "-->" + str(check(input1)))

input2 = "geeks for geeks"

print(input2 + "-->" + str(check(input2)))

input3 = "geeksforgeeks"

print(input3 + "-->" + str(check(input3)))

""" 
    Example 3 
    The string constant ascii_lowercase can be used in many practical applications. 
    Let’s see a code explaining how to use ascii_lowercase to generate strong random passwords of given size.
"""

def rand_pass(size):

    # Takes random choices from
    # ascii_letters and digits
    letters = string.ascii_lowercase

    #generate_pass = ''.join([random.choice(string.ascii_lowercase + string.digits) for n in range(size)])
    generate_pass =  ''.join([random.choice(letters) for n in range(size)])

    return generate_pass

# Driver Code
password = rand_pass(10)
print(password)