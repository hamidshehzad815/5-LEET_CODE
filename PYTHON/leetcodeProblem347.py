class Solution(object):
    def topKFrequent(self, nums, k):
        frequencyDict = {}
        for num in nums:
            if num in frequencyDict:
                frequencyDict[num] += 1
            else:
                frequencyDict[num] = 1
        sorted_freq = sorted(frequencyDict.items(),
                             key=lambda item: item[1], reverse=True)
        topKFrequent = [item[0] for item in sorted_freq[:k]]
        return topKFrequent
