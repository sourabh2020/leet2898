class Solution:
    def canJump(self, nums: List[int]) -> bool:
        terminate = len(nums)-1
        if len(nums)==1 or len(nums)==0:
            return True
        for i in range(len(nums)-2, -1, -1):
            if(i+nums[i]>=terminate):
                terminate=i
                if(terminate==0):
                    return True
                continue
        return False
        
