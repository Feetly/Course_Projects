import numpy as np
import random
from scipy import stats
import matplotlib.pyplot as plt

data = np.random.randint(0,101,1000000)

def Central_Tendencies(data): 
    n=np.sort(data)
    print("Mean:",n.mean())
    print("Median:",np.median(n))
    print("Mode:",stats.mode(n)[0][0],"Count:",stats.mode(n)[1][0],"\n")  
    
sample = random.choices(data,k=10000)

c = []
for i in range(0,50000,5):
    c.append(data[i])
    
meansq=[np.nan,np.mean(data),np.mean(sample),np.mean(c)]
mediansq=[np.nan,np.median(data),np.median(sample),np.median(c)]
modesq=[np.nan,stats.mode(np.sort(data))[0][0],stats.mode(np.sort(sample))[0][0],stats.mode(np.sort(c))[0][0]]

print("\nStats of Part A:")
Central_Tendencies(data)

print("Stats of Part B:")
Central_Tendencies(sample)

print("Stats of Part C:")
Central_Tendencies(c)

fig,axes = plt.subplots(nrows=1,ncols=3,figsize=(13,7))

axes[0].plot(meansq,'bo',linestyle='--',linewidth=1.0,markersize=12)
axes[0].set_title("Actual Mean: "+str(np.sort(data).mean()))
axes[0].set_ylabel('Mean')
axes[0].set_xlabel('Parts')
axes[0].set_xticks(np.arange(1, 4, step=1))

axes[1].plot(mediansq,'bo',linestyle='--',linewidth=1.0,markersize=12)
axes[1].set_title("Actual Median: "+str(np.median(np.sort(data))))
axes[1].set_ylabel('Median')
axes[1].set_xlabel('Parts')
axes[1].set_xticks(np.arange(1, 4, step=1))

axes[2].plot(modesq,'bo',linestyle='--',linewidth=1.0,markersize=12)
axes[2].set_title("Actual Mode: "+str(stats.mode(np.sort(data))[0][0]))
axes[2].set_ylabel('Mode')
axes[2].set_xlabel('Parts')
axes[2].set_xticks(np.arange(1, 4, step=1))

plt.tight_layout()
plt.show()
