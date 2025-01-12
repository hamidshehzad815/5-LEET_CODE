def findPermutationDifference(s, t):
    total = 0
    for i in range(len(s)):
        for j in range(len(t)):
            if s[i] == t[j]:
                total += abs(i-j)
                break
    return total


s = 'abcde'
t = 'edbac'
print(findPermutationDifference(s, t))
