class Solution:
    def reverseWords(self, s: str) -> str:
        s = s.rstrip()
        s = s.lstrip()
        list_s = s.split()
        res = []
        for i in range(len(list_s)-1, -1, -1):
            res.append(list_s[i])
        print(res)
        new_str = ' '.join(res)
        return new_str
        # print(new_str)
