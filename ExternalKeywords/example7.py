"""
Using os.rmdir()
os.rmdir() method in Python is used to remove or delete an empty directory. OSError will be raised if the specified path is not an empty directory.
"""

import os

# Directory name
directory= "Atsız"

# Parent Directory
parent = "D:\ABS\Authors"

# Path
path = os.path.join(parent,directory)
os.rmdir(path)