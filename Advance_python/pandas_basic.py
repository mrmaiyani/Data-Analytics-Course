import pandas as pd

data = {"name": [ "Ali", "sara", "john"],
        "marks":[85, 90, 78]}

df = pd.DataFrame(data)
print(df)

df.head()
df.tail()
df.info()
df.describe()

print(df["marks"])