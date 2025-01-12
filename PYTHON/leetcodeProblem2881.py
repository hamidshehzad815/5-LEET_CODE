import pandas as pd


def createBonusColumn(employee):
    employee['bonus'] = [salary*2 for salary in employee['salary']]
    return employee


name = pd.Series(['Piper', 'Grace', 'Georgia'])
salary = pd.Series([4548, 28150, 1103])
employee = pd.DataFrame({'name': name, 'salary': salary})
createBonusColumn(employee)

print(employee)
