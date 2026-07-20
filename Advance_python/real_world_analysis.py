import numpy as np
import matplotlib.pyplot as plt

days = np.arange(1,11)
sales_in_cr = np.array([2.5, 3.0, 4.5, 8.7, 6.3, 9.2, 2.9, 4.3, 6.1, 4.6])
plt.figure(figsize=(10, 5))
plt.style.use('fast')
plt.plot(days, sales_in_cr, marker="o", color='b', label='Sales in crores')
plt.title('Daily Sales Over 10 Days')
plt.xlabel('X-axis')
plt.ylabel('Y-axis')
plt.grid(True)
plt.show()