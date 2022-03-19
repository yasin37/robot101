"""
Using os.makedirs()
os.makedirs() method in Python is used to create a directory recursively.
That means while making leaf directory if any intermediate-level directory is missing, os.makedirs() method will create them all.
"""

import os

# Leaf directory
my_directory="Atsız"

# Parent Directories
parent_dir = "D:\ABS\Authors"

path = os.path.join(parent_dir,my_directory)
os.makedirs(path)
print("Directory %s is created" %path)

# Directory 'Authors and 'Atsız' will
# be created too
# if it does not exists
