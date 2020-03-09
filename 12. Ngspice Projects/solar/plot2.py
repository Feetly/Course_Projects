import matplotlib.pyplot as plt
import csv
import numpy as np
x1=[0.004,0.03,0.06,0.09,0.12,0.15,0.18,0.21,0.24,0.26]
y1=[-0.45,-0.44,-0.44,-0.44,-0.44,-0.44,-0.43,-0.43,-0.43,-0.43]

x2=[0.03,0.3,0.5,0.75,1,1.25,1.5,1.75,2,2.25,2.41]
y2=[4.18,4.13,4.11,4.09,4.07,4.05,4.03,4.01,3.98,3.95,3.94]

plt.plot(x1,y1, marker='o')
plt.plot(x2,y2, marker='x')

plt.title('I vs V')
plt.xlabel('Vcell')
plt.ylabel('Icell')
plt.savefig('filename_DCL#.pdf')
plt.show()

