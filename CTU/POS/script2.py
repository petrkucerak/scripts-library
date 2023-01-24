# import matplotlib library
import matplotlib.pyplot as plt
import numpy as np

data = np.loadtxt("5V.txt")

x1 = data[:, 4] - np.mean(data[:, 4])
x2 = data[:, 5] - np.mean(data[:, 5])

plt.xcorr(x1, x2, "full", lw=3)
plt.grid()
plt.show()