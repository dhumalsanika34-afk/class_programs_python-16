num=[89,99,78,66,34,24,11,56,90,87,34,24,44,56,67,43]
largest=num[0]
for i in range (len(num)):
 if num[i]>largest:
  largest=num[i]
  
 print("largest=",largest)