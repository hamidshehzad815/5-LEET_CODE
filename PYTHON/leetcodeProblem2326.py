class ListNode(object):
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution(object):
    def isHead(self, head):
        if not head:
            return True
        return False

    def spiralMatrix(self, m, n, head):
        matrix = [[-1]*n for _ in range(m)]
        row = 0
        column = 0
        columnMax = n
        columnMin = 0
        rowMax = m
        rowMin = 1
        listEmpty = False
        while head:
            for column in range(columnMin, columnMax):
                matrix[row][column] = head.val
                head = head.next
                if self.isHead(head):
                    return matrix
            columnMax -= 1

            for row in range(rowMin, rowMax):
                matrix[row][column] = head.val
                head = head.next
                if self.isHead(head):
                    return matrix
            rowMax -= 1

            for column in range(columnMax-1, columnMin-1, -1):
                matrix[row][column] = head.val
                head = head.next
                if self.isHead(head):
                    return matrix
            columnMin += 1

            for row in range(rowMax-1, rowMin-1, -1):
                matrix[row][column] = head.val
                head = head.next
                if self.isHead(head):
                    return matrix
            rowMin += 1
        return matrix


head = ListNode(3)
current = head
s = Solution()
values = [0, 2, 6, 8, 1, 7, 9, 4, 2, 5, 5, 0]

for val in values:
    current.next = ListNode(val)
    current = current.next

print(s.spiralMatrix(3, 5, head))
