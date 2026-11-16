class AgeInvalidException:
 def checkage(age):
    if age<18:
        raise AgeInvalidException("age is invalid")
    return age

try:
    obj=checkage
    checkage(18)

except AgeInvalidException as e:
    print("error:,e")
finally:
    print("code executed")