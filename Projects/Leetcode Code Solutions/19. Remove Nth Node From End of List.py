class Solution(object):
    def removeNthFromEnd(self, head, n):
        if not head:
            return None
        dummy = ListNode(0)
        dummy.next = head
        slow, fast = dummy, dummy
        for i in range(n):
            fast = fast.next
        while fast.next:
            slow = slow.next
            fast = fast.next
        slow.next = slow.next.next
        return dummy.next