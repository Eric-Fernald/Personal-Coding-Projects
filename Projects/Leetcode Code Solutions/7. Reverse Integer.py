class Solution(object):
    def reverse(self, x):
        if x < 0:
            return -self.reverse(-x)
        result = 0
        while x:
            result = result * 10 + x % 10
            x /= 10
        return result if -2 ** 31 <= result <= 2 ** 31 - 1 else 0