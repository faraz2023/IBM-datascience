class Circle(object):
    def __init__(self, r, c):
        self.r = r;
        self.c = c;




# c1 = Circle(10, 'c')
# print(c1.r)

with open("ferri.txt", "r") as file1:
    stuff = file1.readline()
    import math as mt
    print(mt.asin(0.5))
    while stuff != "":
        data = stuff.split("-")
        print('our data shows you are ' + data[0] + "and your rank is: " + data[1])
        stuff = file1.readline()
