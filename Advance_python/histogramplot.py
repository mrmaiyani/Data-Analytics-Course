import matplotlib.pyplot as plt
import numpy as np

data = np.random.randn(1000)

plt.figure(figsize=(8, 6))
plt.legend()
plt.hist(data, bins = 50, edgecolor = "black")
plt.title('Big Data of histogram plot')
plt.xlabel('X axis')
plt.ylabel('Y axis')
plt.show()