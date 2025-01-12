def getBinary(self, number):
    binary = ""
    while number >= 2:
        remainder = number % 2
        number //= 2
        binary = str(remainder) + binary
    binary = str(number) + binary
    return binary


def minBitFlips(self, start, goal):
    startBinary = getBinary(start)
    goalBinary = getBinary(goal)
    count = 0
    if len(startBinary) > len(goalBinary):
        bitdifference = len(startBinary) - len(goalBinary)
        goalBinary = bitdifference * '0' + goalBinary
    else:
        bitdifference = len(goalBinary) - len(startBinary)
        startBinary = bitdifference * '0' + startBinary
    for index in range(0, len(startBinary)):
        if startBinary[index] != goalBinary[index]:
            count += 1
    return count


res = minBitFlips(3, 4)
print(res)
