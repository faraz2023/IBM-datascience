import pandas as pd


a_d = "Ferri.csv"

ferri = pd.read_csv(a_d)


print(ferri.iloc[1,0])
print("\n\n")

#slicing a dataFrame
short_ferri = ferri.iloc[0:3, 0:2]
print(pd.DataFrame.to_string(short_ferri))

print("\n")
f = ferri.loc[0, "morals"]
print(f)
print(ferri.loc[0])
with open("out.txt", 'w') as out:
    out.write(pd.DataFrame.to_string(ferri))

a = {'key1': [12,13,14], 'key2': [2,3,4], 'key3': ['faraz', 23, 23]}

a_df = pd.DataFrame(a)
print(a_df)
print(a_df[['key1']])


print("\n\nUSINFUNIQUE\n\n")

unique_ferri_arr = ferri["Age"].unique()
print(unique_ferri_arr)

old_ferri_df = ferri[ferri["Age"] >= 60]
old_ferri_df.to_csv("oldAge.csv")
