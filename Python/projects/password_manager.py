import pyperclip
import os 

FILE_NAME = "passwords.txt"

def save_password():
    website = input("Enter website: ")
    password = input("Enter password: ") 
    with open(FILE_NAME, "a") as f:
        f.write(f"{website}<||>{password}\n")

def get_password():
    website = input("Enter website: ")
    with open(FILE_NAME, "r") as f:
        for line in f:
            if website in line:
                password = line.strip().split("<||>")[1] 
                pyperclip.copy(password) 
                print("Password copied to clipboard!") 
                break

        else:
            print("Website not found.")

def start():
    while True:
        print("1. Save Password")
        print("2. Get Password")
        print("3. Exit")
        choice = input("Choose an option: ")
        if choice == '1':
            save_password()
        elif choice == '2':
            get_password()
        elif choice == '3':
            print("Exiting...")
            break

        else:
            print("Invalid choice. Please try again.")

start()
