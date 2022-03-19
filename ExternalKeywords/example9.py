"""
# popen() provides a pipe/gateway and accesses the file directly

"""

import os
fd = "D:\ABS\Authors\\test2.txt"
file = os.popen(fd, 'w')
file.write("Kartal Gol GOl")
# File not closed, shown in next function.

