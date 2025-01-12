from copy import deepcopy


class Solution(object):
    def findMatrix(self, nums):
        result = []
        visited = [1]

        for i in range(0, len(nums)):
            if len(visited) > 0 :
                visited.clear()
                for j in range(0, len(nums)):
                    if nums[j] != None:
                        if nums[j] not in visited:
                            visited.append(nums[j])
                            nums[j] = None
                result.append(deepcopy(visited))
        return result


s = Solution()
print(s.findMatrix(list([1, 3, 4, 1, 2, 3, 1])))
