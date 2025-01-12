class Solution(object):
    def uncommonFromSentences(self, s1, s2):
        frequencies = {}
        for word in s1.split():
            if word not in frequencies:
                frequencies[word] = 1
            else:
                frequencies[word] += 1
        for word in s2.split():
            if word not in frequencies:
                frequencies[word] = 1
            else:
                frequencies[word] += 1
        uncommon = []
        for key in frequencies:
            if frequencies[key] == 1:
                uncommon.append(key)
        return uncommon



s1 = "s z z z s"
s2 = "s z ejt"
s = Solution()
print(s.uncommonFromSentences(s1, s2))
