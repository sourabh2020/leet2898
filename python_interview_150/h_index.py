# brute force solution
class Solution:
    def hIndex(self, citations: List[int]) -> int:
        citations.sort()
        h_index=0
        if (len(citations)==1 and citations[0]>0):
            return 1
        for i in range(0, len(citations)):
            x = citations[i]
            if x+i!=i or i==0:
                if x+i <= len(citations):
                    h_index = x
                else:
                    h_index = max((len(citations)-i), h_index)
            else:
                h_index=0
        return h_index
