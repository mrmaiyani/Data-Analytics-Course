import matplotlib.pyplot as plt
import numpy as np

x = [1, 2, 3, 4, 5]
y = [10, 20, 15, 35, 40]

plt.style.use('ggplot')
plt.scatter(x, y, s = 100, c = "yellow", alpha = 1)
plt.title('Scatter Chart Example')
plt.xlabel('X axis')
plt.ylabel('Y axis')
plt.legend()
plt.show()