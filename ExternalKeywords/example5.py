"""
os.listdir() method in Python is used to get the list of all files and directories in the specified directory.
If we don’t specify any directory, then the list of files and directories in the current working directory will be returned.
"""

# Python program to explain os.listdir() method

# importing os module

import os

path = "D:\ISD Projects"

dir_list = os.listdir(path)
print("Files and Directories in " + path + " : ")
# print the list
print(dir_list)

