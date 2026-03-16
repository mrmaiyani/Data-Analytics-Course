students = {
    "Name" : "Utsav",
    "City" : "Surat",
    "Company" : "Infosys"
}

print(students["Company"])
# print(students["Nameeee"]) #error

print(students.get("Nameeeee"))
print(students.get("Name"))

students["City"]  = "Ahmedabad"
print(students)