# selecting, filtering, cleaning
import pandas as pd

df = pd.DataFrame({
    "product Name": ["Laptop", "Smartphone", "Tablet", None] * 200,
    "Price": [1000, 500, 300, None] * 200,
    "category": ["Electronics", "Electronics", "Electronics", None] * 200,
    "rating": [4.5, 4.0, None, 4.2] * 200,
    "reviews": [100, 200, 150, 80] * 200,
    "in_stock": [True, True, False, None] * 200,
    "launch_year": [2020, 2021, 2019, None] * 200
})

# print(df)
# print(df[df["in_stock"] == True])
# print(df[(df["reviews"] > 100) & df["in_stock"] == True])
# print(df.isna().sum())
# print(df["rating"].fillna(df["rating"].mean()))
# df = df.rename(columns={"Product Name": "product_name"})
# print(df["Price"].astype(float))
# print(df["category"].str.lower().str.strip())
print(df.head())
