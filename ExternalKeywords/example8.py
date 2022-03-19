"""
Commonly Used Functions

os.name: This function gives the name of the operating system dependent module imported.
The following names have currently been registered: ‘posix’, ‘nt’, ‘os2’, ‘ce’, ‘java’ and ‘riscos’.

"""

import os

print(os.name)

fd = "D:\ABS\Authors\\test.txt"
# popen() is similar to open()
file = open(fd,'w')
file.write("Hello 222")
file.close()
file = open(fd,'r')
text = file.read()
print(text)

