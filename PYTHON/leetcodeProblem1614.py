class Solution(object):
    def maxDepth(self, s):
        maximumDepth = 0
        leftBrackets = 0
        rightBrackets = 0
        currentDepth = 0
        for ch in s:
            if ch == '(':
                leftBrackets += 1
            elif ch == ')':
                rightBrackets += 1

            maximumDepth = max((leftBrackets - rightBrackets), maximumDepth)
        return maximumDepth


solution = Solution()
expressions = [
    "((3+2)*(4-1))+(5**2-(8/2))",
    "((7*(6-(3+2)))+(9/(3-1)))",
    "((8+4)/(2*(5-3)))-(6-(4/2))",
    "(((3+5)*2)-(7+(8/4)))*(9-1)",
    "((12/3)+(2*(6-1)))-((10-3)/(2+(4-2)))"
]
for expression in expressions:
    print(solution.maxDepth(expression))
