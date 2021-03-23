import sys
import itertools

def countries():
    n = int(input())
    countries = list()
    if n < 1 or n > 999:
        return "ERROR!"
    
    for i in range(n):
        userInput = input().splitlines()
        countries.append(userInput)
    
    merged_list = list(itertools.chain(*countries))
    merged_set = set(merged_list)
    length_of_set = len(merged_set)
    print(length_of_set)
    
countries()