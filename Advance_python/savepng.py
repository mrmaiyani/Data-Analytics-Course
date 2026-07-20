import matplotlib.pyplot as plt
import numpy as np
import matplotlib

# Generate some data
x = np.linspace(1, 10, 100)
y = np.sin(x)

plt.style.use('_mpl-gallery')
plt.figure(figsize=(10, 5))
plt.plot(x, y, label = "Sin Wave")
plt.title("Sin Wave Plot")
plt.xlabel("X-axis")
plt.ylabel("Y-axis")
plt.savefig('Sinwave.pdf')
plt.show()