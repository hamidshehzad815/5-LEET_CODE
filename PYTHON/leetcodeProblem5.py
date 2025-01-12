class Solution(object):
    def isPalin(self, str, left, right):
        leftHalf = ""
        rightHalf = ""
        while left <= right:
            if str[left] != str[right]:
                return (False, None)
            if left == right:
                leftHalf += str[left]
                break
            leftHalf += str[left]
            rightHalf = str[right]+rightHalf
            left += 1
            right -= 1
        return (True, leftHalf+rightHalf)

    def longestPalindrome(self, str):
        largest = ""
        for i in range(len(str)):
            index = str.find(str[i], i+1)
            if index != -1:
                (is_palin, subString) = self.isPalin(str, i, index)
                if is_palin and len(subString) > len(largest):
                    largest = subString
        return largest


s = Solution()
str = ""
print(s.longestPalindrome(str))
