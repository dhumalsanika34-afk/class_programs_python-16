def checkage(age):
    if age < 0:
        raise ValueError("Age can't be negative")
    else:
        print("age is positive")
    return age

try:
    checkage(5)

except ValueError as e:
    print("Error:", e)

finally:
    print("Code executed")