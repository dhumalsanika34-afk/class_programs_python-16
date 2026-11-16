number=int(input("Enter the number:"))

for i in range(2, number):
  if number % i == 0:
    print(f"The first divisor of {number} is {i}")
    break
else:
  print(f"{number} is a prime number")