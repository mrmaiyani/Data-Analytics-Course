# python list
data = [1, 2, 3, 4]
result = []

for x in data:
    result.append(x * 2)
print(result)

# numpy array
import numpy as np

data = np.array([1, 2, 3, 4])
result = data * 2
print(result)

# creating numpy arrays
a = np.array([10, 20, 30])
b = np.zeros(5)
c = np.ones(3)
d = np.arange(1,6)

# operation
a + 10
a * 2
a > 1

a.sum()
a.mean()
a.max()
a.min()

# two and three dimensional array
matrix = np.array([[1, 2], [3, 4]])
tensor = np.array([[[1, 2], [3, 4]], [[5, 6], [7, 8]]])
print(tensor)