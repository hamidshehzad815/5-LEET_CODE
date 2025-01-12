from copy import deepcopy


class ListNode(object):
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution(object):
    def calculateEachPartLength(self, head, k):
        length = 0
        iterator = head
        while iterator:
            length += 1
            iterator = iterator.next
        return length

    def splitListToParts(self, head, k):
        length = self.calculateEachPartLength(head, k)

        partSize = length // k
        extraOnes = length % k

        result = []
        current = head

        for i in range(k):
            partHead = current
            partLength = partSize + (1 if i < extraOnes else 0)

            for j in range(partLength - 1):
                if current:
                    current = current.next

            if current:
                nextPart = current.next
                current.next = None
                current = nextPart

            result.append(partHead)

        return result


head = ListNode(1)
current = head

for i in range(2, 4):
    current.next = ListNode(i)
    current = current.next

s = Solution()
result = s.splitListToParts(head, 5)
print(result[0].val)
