def complex_calc(i):
    return i*i

def get_numbers():
    for i in range(5):
        yield complex_calc(i)

a = get_numbers()
print(a, type(a))
print(next(a))
print(next(a))
print(next(a))
print(next(a))
print(next(a))
