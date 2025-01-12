def getBinary(number):
    binary = ""
    while number >= 2:
        remainder = number % 2
        number //= 2
        binary = str(remainder) + binary
    binary = str(number) + binary
    return binary


def validStrings(n):
    result = []
    number = 0
    while True:
        binary = getBinary(number)
        number += 1
        if len(binary) > n:
            return result
        elif len(binary) < n:
            continue
        result.append(binary)


result = validStrings(3)
