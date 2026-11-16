num=int(input("enter number:"))
print("Even number:")
for i in range(0,num+1):
 if i % 2==0:
    print(i,end=" ")
print("\nOdd number:") 
for i in range(0,num):
 if i % 2!=0:
    print(i, end=" ")
       