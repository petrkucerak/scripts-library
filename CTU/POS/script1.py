# import matplotlib library
import matplotlib.pyplot as plt
import numpy as np

data = np.loadtxt("4V.txt")
# data = np.loadtxt("5V.txt")

# Hallovy
x1 = data[:, 0] - np.mean(data[:, 0])
x2 = data[:, 1] - np.mean(data[:, 1])

# Infra
# x1 = data[:, 0] - np.mean(data[:, 2])
# x2 = data[:, 1] - np.mean(data[:, 3])

# Foto
# x1 = data[:, 0] - np.mean(data[:, 4])
# x2 = data[:, 1] - np.mean(data[:, 5])

# Proudy
# x1 = data[:, 0] - np.mean(data[:, 6])
# x2 = data[:, 1] - np.mean(data[:, 7])

plt.plot(x1)
plt.plot(x2)
plt.grid()
plt.show()