class Solution(object):
    def countConsistentStrings(self, allowed, words):
        count = 0
        for word in words:
            consistent = True
            word = set(word)
            for ch in word:
                if ch not in allowed:
                    consistent = False
                    break
            if (consistent):
                count += 1
        return count


allowed = "cad"
words = ["cc", "acd", "b", "ba", "bac", "bad", "ac", "d"]
result = Solution().countConsistentStrings(allowed, words)
print(result)
