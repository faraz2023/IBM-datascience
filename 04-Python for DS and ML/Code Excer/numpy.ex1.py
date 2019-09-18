import numpy as np
import matplotlib.pyplot as plt
from IPython import get_ipython as Ip

##this is for external screen printing plot
##if in a NOTEBOOK => use "%matplotline inline
##Ip().run_line_magic('matplotlib', 'qt')


a = np.array([0,1,2,3,4])
print(type(a))


#hold and behold linear algebra

a = np.array([0,1])
b = np.array([1,0])

## Vector addition
c = a + b
print(c)
print(4*b)

#Hadamard product
print(a * b)

#dot product
print(np.dot(a,b))

#mean
a.mean()

#
print(np.linspace(-10, 2, 4)) #(begin, end, num of intervals)


x = np.linspace(-100, 100, 1000)
y = np.sin(x)
plt.plot(x, y)
plt.show()


