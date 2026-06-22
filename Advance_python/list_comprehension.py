# list Comprehension
numbers = [1, 2, 3, 4, 5]

squared = []
for x in numbers:
    squared.append(x*x)

print(squared)


# filtering

numbers = [1, 2, 3, 4, 5, 6]
even_numbers = [x for x in numbers if x % 2 == 0]
print(even_numbers)

# Transforming text data

names = [" Ali ", "Sara ", "JOHN"]
clean_names = [name.strip().lower() for name in names]
print(clean_names)

# Dictionary Comprehension

items = ["apple", "banana", "cherry"]
prices = [0.5, 0.3, 0.2]
price_dict = {item: price for item,price in zip(items,prices)}
print(price_dict)

# filtering

scores = {"math" : 80, "machine_learning" : 45, "operating_system" : 65}
passed = {k : v for k,v in scores.items() if v >= 80}
print(passed)

# set comprehension
values = [1, 2, 2, 3, 3, 4]
unique_squares = {x * x for x in values}
print(unique_squares)

# nested comprehension

pairs = [(x, y) for x in [1, 2] for y in [3, 4]]
print(pairs)