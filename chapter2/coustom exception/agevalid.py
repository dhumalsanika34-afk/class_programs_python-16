class AgeInvalidException(Exception):
    pass

def checkage(age):
    if age < 18:
        raise AgeInvalidException("Age is invalid")
    return age

try:
    checkage(18)
    print("Age is valid")

except AgeInvalidException as e:
    print("Error:", e)

finally:
    print("Code executed")
