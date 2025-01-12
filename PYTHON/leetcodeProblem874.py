class Solution(object):
    def robotSim(self, commands, obstacles):
        x = 0
        y = 0
        currentDirection = 'N'
        directions = {
            'currentDirection': 'N',
            'N': ('W', 'E'),
            'W': ('S', 'N'),
            'S': ('E', 'W'),
            'E': ('N', 'S')
        }
        obstacles = set(map(tuple, obstacles))
        maxDistance = 0
        for command in commands:
            if command == -2:
                currentDirection = directions[currentDirection][0]
            elif command == -1:
                currentDirection = directions[currentDirection][1]
            else:
                for i in range(command):
                    if currentDirection == 'N':
                        if (x, y + 1) in obstacles:
                            break
                        y += 1
                    elif currentDirection == 'W':
                        if (x - 1, y) in obstacles:
                            break
                        x -= 1
                    elif currentDirection == 'S':
                        if (x, y - 1) in obstacles:
                            break
                        y -= 1
                    elif currentDirection == 'E':
                        if (x + 1, y) in obstacles:
                            break
                        x += 1
                    maxDistance = max(maxDistance, x * x + y * y)
        return maxDistance
