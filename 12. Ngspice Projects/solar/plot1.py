import matplotlib.pyplot as plt
import csv
import numpy as np
x1=[0.54,0.54,0.56,0.58,0.6,0.61,0.65,0.66,0.67]
y1=[0.078,0.1,0.2,0.4,0.7,1,5,7,10]

x2=[0.576,0.593,0.608,0.618,0.655,0.670]
y2=[0.1,0.2,0.4,0.7,1,5]

x3=[0.559,0.579,0.592,0.608,0.651,0.668]
y3=[0.1,0.2,0.4,0.7,1,5]

x4=[0.563,0.577,0.597,0.612,0.623,0.664,0.673]
y4=[0.1,0.2,0.4,0.7,1,5,7]

plt.plot(x1,y1, marker='o')
plt.plot(x2,y2, marker='x')
plt.plot(x3,y3, marker='*')
plt.plot(x4,y4, marker='s')

plt.title('I vs V')
plt.xlabel('V')
plt.ylabel('I')
plt.savefig('filename_DCL#.pdf')
plt.show()

