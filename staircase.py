def printStaircase(levels):
    for i in xrange(1,levels+1):
        print ("#" * i).rjust(levels)
 
 
if __name__ == '__main__':
    t = input()
    printStaircase(t)
