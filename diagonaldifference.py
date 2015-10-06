def getDiagonalDifference(v):
    diff = 0
    v_len = len(v)
    for idx in xrange(v_len):
        diff += v[idx][idx]
        diff -= v[idx][v_len-idx-1]
 
    return abs(diff)    
         
if __name__ == '__main__':
    t = input()
    v = []
    for _ in xrange(t):
        e = map(int, raw_input().split())
        v.append(e)
         
    print getDiagonalDifference(v)
