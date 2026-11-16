num=int(input("enter number for factorial:")) 
fact=1
for i in range(1, num+1):
    fact=fact*i
    print("factorial=",fact)