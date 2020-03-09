import matplotlib.pyplot as plt
import csv
import numpy as np
x1=[0.54,0.54,0.56,0.58,0.6,0.61,0.625]
y1=[0.078,0.1,0.2,0.4,0.7,1,5]

x2=[0.556,0.570,0.589,0.608,0.645,0.665]
y2=[0.1,0.2,0.4,0.7,1,5]

x3=[0.569,0.579,0.592,0.610,0.652,0.668]
y3=[0.1,0.2,0.4,0.7,1,5]

x4=[0.573,0.587,0.597,0.614,0.660,0.680]
y4=[0.1,0.2,0.4,0.7,1,5]

plt.plot(x1,y1, marker='o')
plt.plot(x2,y2, marker='x')
plt.plot(x3,y3, marker='*')
plt.plot(x4,y4, marker='+')

plt.title('I vs V')
plt.xlabel('V')
plt.ylabel('I')
plt.savefig('filename_DCL#.pdf')
plt.show()

