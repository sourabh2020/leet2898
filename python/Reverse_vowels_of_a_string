# Given a string s, reverse only all the vowels in the string and return it.

# The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.

# Example 1:

# Input: s = "hello"
# Output: "holle"
# Example 2:

# Input: s = "leetcode"
# Output: "leotcede" 

# Constraints:

# 1 <= s.length <= 3 * 105
# s consist of printable ASCII characters.

# solution:
class Solution:
    def reverseVowels(self, s: str) -> str:
        vowelstr = 'aeiouAEIOU'
        x = list(s)
        n = len(x)
        i,j = 0,n-1
        while(i<j):
            print(i,j)
            if(x[i] in vowelstr and x[j] in vowelstr):
                x[i], x[j] = x[j], x[i]
                i = i+1
                j = j-1
            elif(x[i] in vowelstr and x[j] not in vowelstr):
                j = j-1
            elif(x[i] not in vowelstr and x[j] in vowelstr):
                i = i+1
            else:
                i = i+1
                j = j-1
        s=""
        for k in x:
            s += k
        print(x)
        return s
