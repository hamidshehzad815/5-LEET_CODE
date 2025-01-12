class Solution:
    def is_integer(self, s):
        return True if s.lstrip('-').isdigit() else False

    def evalRPN(self, tokens):
        stack = []
        for val in tokens:
            if self.is_integer(val):
                stack.append(int(val))
            else:
                operand2 = stack.pop()
                operand1 = stack.pop()
                if val == '+':
                    stack.append(operand1 + operand2)
                elif val == '-':
                    stack.append(operand1 - operand2)
                elif val == '*':
                    stack.append(operand1 * operand2)
                elif val == '/':
                    stack.append(int(operand1 / operand2) if operand1 *
                                 operand2 >= 0 else -(-operand1 // operand2))
        return stack[0]


solution = Solution()
tokens = ["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]
result = solution.evalRPN(tokens)
print(result)  
