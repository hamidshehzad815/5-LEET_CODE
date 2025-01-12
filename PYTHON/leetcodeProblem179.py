class Solution(object):
    def largestNumber(self, nums):
        nums = sorted(nums, key=lambda x: str(x)*10, reverse=True)
        largestNumber = ''
        leftInsert = ''
        rightInsert = ''
        for num in nums:
            leftInsert = str(num) + leftInsert
            rightInsert += str(num)
            if int(leftInsert) > int(rightInsert):
                largestNumber = str(num)+largestNumber
            else:
                largestNumber += str(num)
        if '0'*len(largestNumber) == largestNumber:
            return '0'
        return largestNumber


s = Solution()
nums = [00, 0]
print(s.largestNumber(nums))
