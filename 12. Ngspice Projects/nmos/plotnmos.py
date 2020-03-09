import matplotlib.pyplot as plt
import csv
import numpy as np
x=[30,100,500,1000,2000,5000,10000,50000,100000,200000,300000,400000,500000,600000,700000,800000,900000,1000000,1250000,1500000]
y=[12.25,13.44,13.98,14.23,14.06,14.06,14.06,13.80,13.44,13.255,12.46,11.59,10.88,9.24,8.13,7.61,7.04,6.02,4.86,3.521]


plt.semilogx(x, y)

plt.title('frequency response')
plt.xlabel('freq')
plt.ylabel('gain ')
plt.savefig('filename_DCL#.pdf')
plt.show()

