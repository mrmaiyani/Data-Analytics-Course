import matplotlib.pyplot as plt
import numpy as np

Category = ["A", "B", "C"]
Values = [20, 35, 15]

plt.bar(Category, Values)
plt.title('Simple Bar Plot')
plt.xlabel('X axis')
plt.ylabel('y axis')
plt.show()