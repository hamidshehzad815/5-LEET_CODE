class Solution(object):
    def getLucky(self, s, k):
        sumAfterConvert = 0
        convert = []
        for ch in s:
            ch = ord(ch)-96
            convert.append(str(ch))
        convert = ''.join(convert)
        s = []
        for i in range(0, k):
            sumAfterConvert = 0
            for ch in convert:
                sumAfterConvert += int(ch)
            convert = str(sumAfterConvert)
        return sumAfterConvert


s = Solution()
print(s.getLucky('zxab', 2))
