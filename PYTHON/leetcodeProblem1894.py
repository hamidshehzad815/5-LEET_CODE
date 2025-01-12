# class Solution(object):
#     def chalkReplacer(self, chalk, k):
#         i = 0
#         while chalk[i] <= k:
#             k -= chalk[i]
#             if i == len(chalk)-1:
#                 i = 0
#             else:
#                 i += 1
#         return i

class Solution(object):
    def chalkReplacer(self, chalk, k):
        totalSum = 0
        for index in range(len(chalk)):
            totalSum += chalk[index]
        k %= totalSum
        if k == 0:
            return 0
        i = 0
        while chalk[i] <= k:
            k -= chalk[i]
            i += 1
        return i


chalk = [5, 1, 5]
k = 27
solution = Solution()
print(solution.chalkReplacer(chalk, k))
