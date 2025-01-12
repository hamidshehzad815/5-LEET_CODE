class Solution(object):
    def findWordsContaining(self, words, x):
        indices = []
        for index in range(len(words)):
            if x in words[index]:
                indices.append(index)
        return indices


s = Solution()
words = ["abc", "bcd", "aaaa", "cbc"]
x = "z"
print(s.findWordsContaining(words, x))
