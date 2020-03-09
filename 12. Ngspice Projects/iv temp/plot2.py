import matplotlib.pyplot as plt
import csv
import numpy as np
x1=[0.001,0.01,0.06,0.1,0.2,0.4,0.7,1,2,3,3.5]
y1=[0.42,0.48,0.531,0.559,0.564,0.588,0.596,0.605,0.625,0.636,0.704]

y2=[0.398,0.455,0.505,0.521,0.539,0.557,0.572,0.58,0.60,0.612,0.618]

y3=[0.35,0.432,0.471,0.508,0.523,0.54,0.55,0.56,0.58,0.599,0.604]

y4=[0.33,0.421,0.44,0.471,0.502,0.53,0.54,0.548,0.567,0.587,0.598]

plt.plot(x1,y1, marker='o')
plt.plot(x1,y2, marker='x')
plt.plot(x1,y3, marker='*')
plt.plot(x1,y4, marker='+')

plt.title('I vs V')
plt.xlabel('V')
plt.ylabel('I')
plt.savefig('filename_DCL#.pdf')
plt.show()

