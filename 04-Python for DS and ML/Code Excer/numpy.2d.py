import numpy as np
import matplotlib.pyplot as plt
from IPython import get_ipython as Ip

'''
Two Dimensional numpy
'''

a = [[1,2,3], [4,5,6], [7,8,3]]
A = np.array(a)
print(A)
print(A.ndim)
print(A.shape)
print(A[1][2])  #note indexation

B = np.array([[2,3,4],[4,2,5],[0,0,0]])
C = A + B
print(C)
print(2 * A)

#hadamar product
D = A * B

#matrix multipication
E = np.dot(A,B)