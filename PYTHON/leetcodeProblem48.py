def trap(height):
    trapedWater = 0
    heights_between_two_points = 0
    lowerHeight = 0
    differnce_between_two_point = 0
    size = 0
    upated_i = 0
    complete = True
    i = 0
    size = len(height)
    while i < size:
        j = i+1
        while j < size:
            upated_i = j
            if height[i] == height[j] or height[j] > height[i]:
                lowerHeight = min(height[i], height[j])
                differnce_between_two_point = j - i - 1
                trapedWater += (
                    lowerHeight * differnce_between_two_point) - heights_between_two_points
                complete = False
                break

            heights_between_two_points += height[j]
            j += 1

        i = {True: i+1, False: upated_i}[complete]
        complete = True
        heights_between_two_points = 0

    return trapedWater


heights = [4,2,3]
print(trap(heights))
