class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        h = list(haystack)
        n = list(needle)
        for i in range(0, len(h)):
            if(h[i]==n[0]):
                if(h[i:i+len(n)])==n:
                    return i
        else:
            return -1
