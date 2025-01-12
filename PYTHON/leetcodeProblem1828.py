from math import sqrt
from numpy import square


class Solution(object):
    def countPoints(self, points, queries):
        answers = []
        for circle in queries:
            count = 0
            circleX, circleY, circleRadius = circle
            for point in points:
                pointX, pointY = point
                distance = sqrt(square(pointX-circleX)+square(pointY-circleY))
                if distance <= circleRadius:
                    count += 1
            answers.append(count)
        return answers


s = Solution()
points = [[1, 1], [2, 2], [3, 3], [4, 4], [5, 5]]
queries = [[1, 2, 2], [2, 2, 2], [4, 3, 2], [4, 3, 3]]
print(s.countPoints(points, queries))
