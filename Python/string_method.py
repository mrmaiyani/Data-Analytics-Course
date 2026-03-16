name = "Utsav Maiyani"
text = "apple,banana,orange,cherry"
email = "utsav@gmail.com"
age = 19
checking = "Python123"

#name[0] = "v" # This is not allowed
print(name)
print(len(name)) 
print(name.lower())
print(name.upper())
print(len(name.strip()))

print(name.replace("ani","kni"))

print(name.isalpha())
print(name.isnumeric())

items = text.split(",")
print(items)

text2 = ",".join(items)
print(text2)

print(name.find("Maiyani"))
print(email.startswith("utsav"))
print(email.endswith(".com"))

first = "Radha"
second = "Krishn"

print( first + " " + second)

print(checking.isalpha())
print(checking.isdigit())
print(checking.isalnum())