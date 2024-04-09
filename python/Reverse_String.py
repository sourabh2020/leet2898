# Write a function that reverses a string. The input string is given as an array of characters s.

# You must do this by modifying the input array in-place with O(1) extra memory.

# Example 1:

# Input: s = ["h","e","l","l","o"]
# Output: ["o","l","l","e","h"]
# Example 2:

# Input: s = ["H","a","n","n","a","h"]
# Output: ["h","a","n","n","a","H"] 

# Constraints:

# 1 <= s.length <= 105
# s[i] is a printable ascii character.

# solution

class Solution:
    def reverseString(self, s: List[str]) -> None:
        """
        Do not return anything, modify s in-place instead.
        """
        list_len = len(s)
        for i in range(0, list_len):
            if(i==list_len-i-1 or i==list_len-i):
                break
            else:
                print("i is "+str(i))
                print("list_len-i-1 is "+str(list_len-1-i))
                s[i], s[list_len-i-1] = s[list_len-i-1], s[i]
        print(s)
        
