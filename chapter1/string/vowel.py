word = "developer"
vowels = "aeiou"

for char in word:
  if char in vowels:
    print(f"'{char}' is a vowel.")
  else:
    print(f"'{char}' is a consonant.")