import pandas as pd

student_id = pd.Series([1, 2, 3])
student_name = pd.Series(['Hamid', 'Nabia', 'Faisal'])
student_id2 = pd.Series([4])
student_name2 = pd.Series(['Abdullah'])

df1 = pd.DataFrame({'student_id': student_id, 'name': student_name})
df2 = pd.DataFrame({'student_id': student_id2, 'name': student_name2})

print(type(pd.concat([df1, df2])))
