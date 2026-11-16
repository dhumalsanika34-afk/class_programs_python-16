num1=int(input("Enter the first side of triangle:"))
num2=int(input("Enter the second side of triangle:"))
num3=int(input("Enter the third side of triangle:"))
if num1==num2==num3:
    print("Given triangle is Equilateral")
elif num1!=num2!=num3:
    print("Given triangle is Scalene")
else:
    print("Given triangle is Isosceles")