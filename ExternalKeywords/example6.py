"""
OS module proves different methods for removing directories and files in Python. These are –

Using os.remove()
Using os.rmdir()

Using os.remove()
os.remove() method in Python is used to remove or delete a file path.
  This method can not remove or delete a directory.
  If the specified path is a directory then OSError will be raised by the method.
"""

import os

# File name
file = "file1.txt"

# File location
location = "D:\ABS\Authors\Atsız"

# Path
path = os.path.join(location,file)

# Remove the file
# 'file.txt'
os.remove(path)



