

1. Create Arrays

import numpy as np

a = np.array([1,2,3])
b = np.array([[1,2],[3,4]])
z = np.zeros((2,2))
o = np.ones((3,3))
r = np.random.rand(3,3)
i = np.eye(3)


---

2. Array Info

print(a.shape)
print(a.ndim)
print(a.dtype)
print(a.size)


---

3. Reshaping

arr = np.arange(12)
arr2 = arr.reshape(3,4)


---

4. Indexing & Slicing

print(arr[0])         # first element
print(arr[1:5])       # slice
print(arr2[1,2])      # row 2 col 3
print(arr2[:,1])      # full column 2


---

5. Math Operations

x = np.array([10,20,30])
y = np.array([1,2,3])

print(x+y)
print(x-y)
print(x*y)
print(x/y)


---

6. Aggregate Functions

data = np.array([3,5,7,9])

print(data.sum())
print(data.mean())
print(np.median(data))
print(data.std())
print(data.min(), data.max())


---

7. Boolean Filtering

data = np.array([10, 5, 18, 2, 30])
print(data[data > 10])


---

8. Stacking Arrays

a = np.array([1,2,3])
b = np.array([4,5,6])

print(np.hstack((a,b)))
print(np.vstack((a,b)))


---

9. Matrix Multiplication

A = np.array([[1,2],[3,4]])
B = np.array([[2,0],[1,3]])

print(np.dot(A,B))


---

10. Random Numbers

np.random.seed(1)
print(np.random.rand(3))
print(np.random.randint(1, 10, 5))


---

11. Unique Values

arr = np.array([1,2,2,3,3,3])
print(np.unique(arr))


---

12. Save & Load NumPy Arrays

np.save("array.npy", arr)
new_arr = np.load("array.npy")


---

🟡 PANDAS (Complete Code List)


---

1. Create Series & DataFrame

import pandas as pd

s = pd.Series([10,20,30])

df = pd.DataFrame({
    'Name': ['A','B','C'],
    'Marks': [80, 90, 85]
})


---

2. Read Files

df = pd.read_csv("data.csv")
df = pd.read_excel("data.xlsx")
df = pd.read_json("data.json")


---

3. Explore Data

print(df.head())
print(df.tail())
print(df.info())
print(df.describe())
print(df.columns)
print(df.shape)


---

4. Select Columns

print(df['Name'])
print(df[['Name','Marks']])


---

5. Select Rows

print(df.iloc[0])       # by index
print(df.loc[1])        # by label
print(df[2:5])          # slicing


---

6. Filter Rows

print(df[df['Marks'] > 80])
print(df[(df['Marks'] > 80) & (df['Marks'] < 95)])


---

7. Add / Update Columns

df['Total'] = df['Qty'] * df['Price']
df['Grade'] = ['A','B','A']


---

8. Delete Columns / Rows

df.drop('Grade', axis=1, inplace=True)
df.drop(0, axis=0, inplace=True)


---

9. Handle Missing Data

df.dropna(inplace=True)
df.fillna(0, inplace=True)
df['Age'].fillna(df['Age'].mean(), inplace=True)


---

10. Sort Data

df.sort_values(by='Marks', ascending=False)


---

11. Group By

df.groupby('Category')['Sales'].sum()
df.groupby('City').mean()


---

12. Merge, Join, Concat

pd.merge(df1, df2, on='ID')
pd.concat([df1, df2])
df1.join(df2)


---

13. Apply Functions

df['Marks2'] = df['Marks'].apply(lambda x: x+5)


---

14. Unique, Value Counts

df['City'].unique()
df['City'].value_counts()


---

15. Rename Columns

df.rename(columns={'Marks':'Score'}, inplace=True)


---

16. Set Index & Reset Index

df.set_index('Name', inplace=True)
df.reset_index(inplace=True)


---

17. Pivot Table

pd.pivot_table(df, values='Sales', index='City', aggfunc='sum')


---

18. Export Data

df.to_csv("output.csv", index=False)
df.to_excel("output.xlsx", index=False)
df.to_json("output.json")

