import seaborn as sns
import matplotlib.pyplot as plt

df = sns.load_dataset("tips")
# print(df.head(5))

sns.lineplot(x="size", y="tip", data = df)
plt.show()