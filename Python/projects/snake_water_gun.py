import random

def Game_win(user,computer):
    if user == computer:
        return None
    
    # Snake VS Water
    if user == "snake" and computer == "water":
        return True
    if user == "water" and computer == "snake":
        return False
    
    # Water VS Gun
    if user == "water" and computer == "gun":
        return True
    if user == "gun" and computer == "water":
        return False
    
    # Gun VS Snake
    if user == "gun" and computer == "snake":
        return True
    if user == "snake" and computer == "gun":
        return False
    
rand_num = random.randint(1,3)

print("Computer's Turn : snake, water, gun")
if rand_num == 1 :
    computer = "snake"
elif rand_num == 2:
    computer = "water"
else:
    computer = "gun"

user = input("Your Turn : snake, water, gun : ").lower()

result = Game_win(user,computer)
print(f"computer choose :{computer}")
print(f"you choose :{user}")

if result is None:
    print("It Is Draw!😲")

elif result == True:
    print("You Win!🤞")

else :
    print("You Lose!😒")