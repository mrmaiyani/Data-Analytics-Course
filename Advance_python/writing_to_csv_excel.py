import pandas as pd
import numpy as np

df = pd.DataFrame({
    "product Name": ["Laptop", "Smartphone", "Tablet", None],
    "Price": [1000, 500, 300, None],
    "category": ["Electronics", "Electronics", "Electronics", None],
    "rating": [4.5, 4.0, None, 4.2],
    "reviews": [100, 200, 150, 80],
    "in_stock": [True, True, False, None],
    "launch_year": [2020, 2021, 2019, None],
    "product_id" : [1, 2, 3, 4]
})

# make dataframe of customer data
df2 = pd.DataFrame({
    "customer_id": [1, 2, 3, 4],
    "name": ["Alice", "Bob", "Charlie", "David"],
    "email": ["alice@example.com", "bob@example.com", "charlie@example.com", "david@example.com"],
    "age": [25, 30, 35, 40]
})

df.to_csv("products.csv", index=False)

df.to_excel("products.xlsx", index=False)

with pd.ExcelWriter("e-commerce.xlsx") as writer:
    df.to_excel(writer, sheet_name="products2", index=False)
    df2.to_excel(writer, sheet_name="Customers", index=False)   

# append data to existing excel file
df2.to_csv("log.csv", mode='a', header=False, index=False)