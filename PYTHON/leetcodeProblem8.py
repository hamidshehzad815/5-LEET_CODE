def myAtoi(s: str):
    atoi = 0
    negative = 0
    zeros = 0
    spaces = 0
    for sp in s:
        if sp == '-':
            negative = 1
            s = s.replace('-', '',1)
        if sp == "+":
            s = s.replace('+', '',1)
        if sp != ' ':
            s = s.replace(' ', '', spaces)
            break
        spaces += 1

    for val in s:
        if val != '0':
            break
        zeros += 1

    s = s.replace('0', '', zeros)
    for value in s:
        if not value.isdigit():
            break
        atoi = atoi * 10 + int(value)

    if negative:
        atoi *= -1
    if atoi < - 2 ** 31:
        atoi = - 2 ** 31
    if atoi > 2 ** 31 - 1:
        atoi = 2 ** 31 - 1
    return atoi


print(myAtoi('010'))
