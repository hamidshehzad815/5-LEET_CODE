from collections import Counter
from copy import deepcopy
import itertools


class Solution(object):
    def getSubsets(self, words):
        subsets = []
        for i in range(len(words)+1):
            for subset in itertools.combinations(words, i):
                subsets.append(list(subset))
        return subsets

    def calculate_letters_score_frequency(self, letters, score):
        frequency = Counter(letters)
        data = {}
        for i, letter in enumerate(letters):
            if letter not in data:
                data[letter] = {'frequency': frequency[letter],
                                'score': score[ord(letter)-97]}
        return data

    def validWords(self, words, letters):
        letterData = set(letters)
        valid = []
        ok = True
        for word in words:
            ok = True
            for letter in word:
                if letter not in letterData:
                    ok = False
                    break
            if ok:
                valid.append(word)
        return valid

    def calculate(self, subset, lettersData):
        totalScore = 0
        for i in range(0, len(subset)):
            count = {}
            word = subset[i]
            score = 0
            for letter in word:
                if letter not in count:
                    count[letter] = 0

                if lettersData[letter]['frequency'] > 0:
                    score += lettersData[letter]['score']
                    count[letter] += 1
                    lettersData[letter]['frequency'] -= 1
                else:
                    for key, value in count.items():
                        lettersData[key]['frequency'] += value
                    score = 0
                    break
            totalScore += score
        return totalScore

    def maxScoreWords(self, words, letters, score):
        words = self.validWords(words, letters)
        subsets = self.getSubsets(words)
        letters = self.calculate_letters_score_frequency(
            sorted(letters), score)
        maxScore = 0
        for subset in (subsets):
            score = self.calculate(subset, deepcopy(letters))
            maxScore = max(maxScore, score)
        return maxScore


solution = Solution()
words = ['dog', 'cat', 'dad', 'good']
letters = ["a", "a", "c", "d", "d", "d", "g", "o", "o"]
score = [1, 0, 9, 5, 0, 0, 3, 0, 0, 0, 0, 0,
         0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
result1 = solution.maxScoreWords(words, letters, score)


words = ["xxxz", "ax", "bx", "cx"]
letters = ["z", "a", "b", "c", "x", "x", "x"]
score = [4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0,
         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 10]
result2 = solution.maxScoreWords(words, letters, score)


words = ["da", "ac", "aba", "abcc", "cadc"]
letters = ["a", "a", "a", "a", "b", "c", "c", "c", "d", "d", "d"]
score = [3, 7, 9, 3, 0, 0, 0, 0, 0, 0, 0, 0,
         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

result3 = solution.maxScoreWords(words, letters, score)

words = ["ac", "abd", "db", "ba", "dddd", "bca"]
letters = ["a", "a", "a", "b", "b", "b", "c", "c", "d", "d", "d", "d"]
score = [6, 4, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0,
         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

result4 = solution.maxScoreWords(words, letters, score)

print(result1)
print(result2)
print(result3)
print(result4)
