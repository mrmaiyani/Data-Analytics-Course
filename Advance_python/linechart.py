import matplotlib.pyplot as plt
import numpy as np

x = [1, 2, 3, 4, 5]
y = [10, 20, 15, 35, 40]

plt.plot(x,y, linewidth = 2, color = "red", marker = "o", linestyle = "--")
plt.title('Students Marks Ratio')
plt.xlabel('Student')
plt.ylabel('Marks')
plt.show()