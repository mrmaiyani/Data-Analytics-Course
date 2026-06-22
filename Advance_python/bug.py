# copy data bug

a = [1, 2, 3]
b = a

b.append(4)
print(a)

# copy data correctly

a = [1, 2, 3]
b = a.copy()

records = {"name" : " Ali", " marks" : [80, 90]}
copy_record = records.copy()

# hidden mutation inside function
def add_item(items):
    items.append(10)

data = [1, 2, 3]
add_item(data)

print(data)