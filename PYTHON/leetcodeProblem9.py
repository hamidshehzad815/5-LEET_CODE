def isPalindrome(x):
        """
        :type x: int
        :rtype: bool
        """
        if x < 0:
                return False
        originalNumber = x
        reversedNumber = 0
        while(x!=0):
                digit = x % 10
                reversedNumber = reversedNumber * 10 + digit
                x //= 10

        if originalNumber==reversedNumber:
                return True
        else:
                return False
        
        

        

print(isPalindrome(10))