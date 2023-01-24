# import matplotlib library
import matplotlib.pyplot as plt
import numpy as np

data = np.loadtxt("5V.txt")

x1 = data[:, 2] - np.mean(data[:, 2])
x2 = data[:, 3] - np.mean(data[:, 3])

plt.xcorr(x1, x2, "full")
plt.grid()
plt.show()