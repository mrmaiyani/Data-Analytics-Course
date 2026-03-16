x = 78 # Global Variable

def show_value():
    print(x)

show_value()


def show_value():
    global x  # Using Global KeyWord
    x = 89
    print(x)

show_value()
print(x)