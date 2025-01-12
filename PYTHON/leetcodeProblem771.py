class Solution(object):
    def numJewelsInStones(self, jewels, stones):
        count = 0
        for jewel in jewels:
            for stone in stones:
                if jewel == stone:
                    count += 1

        return count


solution = Solution()
jewels = 'z'
stones = 'ZZ'
print(solution.numJewelsInStones(jewels, stones))
