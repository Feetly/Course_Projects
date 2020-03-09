import matplotlib.pyplot as plt
import csv
import numpy as np
x=[]
y1=[]
y2=[]
y3=[]
y4=[]
with open('/home/student/student/Documents/led/finplot4.csv', 'r') as csvfile:
    plots= csv.reader(csvfile, delimiter=',')
    for row in plots:
        x.append(float(row[0]))
        y1.append(float(row[1]))
        y2.append(float(row[2]))
        y3.append(float(row[3]))
        y4.append(float(row[4]))

plt.plot(x,y1, marker='o')
plt.plot(x,y2, marker='o')
plt.plot(x,y3, marker='o')
plt.plot(x,y4, marker='o')
plt.title('Plot3')
plt.xlabel('Id')
plt.ylabel('Vd')
plt.savefig('filename_DCL#.pdf')
plt.show()

