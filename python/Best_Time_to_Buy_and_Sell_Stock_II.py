class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        profit = 0
        for i in range(1,len(prices)):
            if(prices[i]>prices[i-1]):
                profit = profit + (prices[i]-prices[i-1])
        return profit


#above is the simple solution where I am checking whether the immediate succeeding one is greater than preceeding one, if yes then summation
#logic derived by going through testcases
#there's another dp way of solving the same problem
