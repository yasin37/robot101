"""
os.mkdir() method in Python is used to create a directory named path with the specified numeric mode.
This method raises FileExistsError if the directory to be created already exists.
"""

import os
# Directory
my_directory = "SofwareTest"

# Parent Directory path
parent_dir = "D:\ABS"

# Path
path = os.path.join(parent_dir,my_directory)

# Create the directory
# 'SofwareTest' in
# 'D:\ABS"'
os.mkdir(path)
print("Directory %s created" %my_directory)



