class ListNode(object):
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


def modifiedList(nums, head):
    current = head
    previous = None
    nums = set(nums)
    while current is not None:
        if current.val in nums:
            if previous is None:
                # Removing the head node
                head = current.next
                current.next = None
                current = head
            else:
                # Removing a non-head node
                previous.next = current.next
                current.next = None
                current = previous.next
        else:
            previous = current
            current = current.next
    return head
