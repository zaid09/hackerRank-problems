def max_toys(prices, rupees):
    answer = 0
    prices.sort()
    for i in prices:
        if(rupees>i):
            rupees-=i
            answer+=1
        else:
            break
    return answer

if __name__ == '__main__':
  n, k = map(int, raw_input().split())
  prices = map(int, raw_input().split())
  print max_toys(prices, k)
