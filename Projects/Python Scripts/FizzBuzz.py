#This program prints a range of 150 numbers from 0-150 and;
# If a number is divisible by 15, it prints fizzbuzz, 
# If it's divisible by 5, it prints buzz,
# If it's divisible by 3, it prints fizz.
for fizzbuzz in range(151):
    if fizzbuzz % 3 == 0 and fizzbuzz % 5 == 0:
        print("fizzbuzz")
        continue
    elif fizzbuzz % 3 == 0:
        print("fizz")
        continue
    elif fizzbuzz % 5 == 0:
        print("buzz")
        continue
    print(fizzbuzz)