import matplotlib.pyplot as plt
import numpy as np

size = ["S", "M", "L", "XL", "XXL"]
Quantity = [12, 25, 63, 13, 18]

plt.pie(Quantity, labels=size, autopct="%1.1f%%")
plt.show()