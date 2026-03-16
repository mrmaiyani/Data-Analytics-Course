print("Error Handling...")

a = int(input("Enter Value of A : "))
b = int(input("Enter Value of B : "))

try:
    print("The Value of a/b is ", a/b)
except Exception as e:
    print("Error Is Occured! - ",e)

print("Thank You...")