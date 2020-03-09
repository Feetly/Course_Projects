import matplotlib.pyplot as plt
import csv
import numpy as np
x1=[10,15,20,25,30,35,40,45]
y1=[0.2,0.27,0.35,0.43,0.52,0.58,0.65,0.73,0.8]

x2=[10,15,20,25,30,35,40,45,50]
y2=[3.8,4.09,4.34,4.51,4.67,4.76,4.87,4.95,5.02]

x3=[]
x3=np.log(x2)
plt.plot(x1,y1, marker='o')
plt.plot(x3,y2, marker='x')

plt.title('I vs V')
plt.xlabel('Vcell')
plt.ylabel('Icell')
plt.savefig('filename_DCL#.pdf')
plt.show()

