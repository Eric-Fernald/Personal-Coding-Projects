#This program creates and runs a quicksort function.
from random import randrange, shuffle

def quicksort(list, start, end):
  #This portion of list has been sorted.
  if start >= end:
    return
  print("Running quicksort on {0}".format(list[start: end + 1]))
  #Select random element to be pivot.
  pivot_idx = randrange(start, end + 1)
  pivot_element = list[pivot_idx]
  print("Selected pivot {0}".format(pivot_element))
  #Swap random element with last element in sub-lists.
  list[end], list[pivot_idx] = list[pivot_idx], list[end]

  #Tracks all elements which should be to left (lesser than) pivot.
  less_than_pointer = start
  
  for i in range(start, end):
    if list[i] < pivot_element:
      #Swap element to the right-most portion of lesser elements.
      print("Swapping {0} with {1}".format(list[i], pivot_element))
      list[i], list[less_than_pointer] = list[less_than_pointer], list[i]
      #Tally that we have one more lesser element.
      less_than_pointer += 1
  #Move pivot element to the right-most portion of lesser elements.
  list[end], list[less_than_pointer] = list[less_than_pointer], list[end]
  print("{0} successfully partitioned".format(list[start: end + 1]))
  #Recursively sort left and right sub-lists.
  quicksort(list, start, less_than_pointer - 1)
  quicksort(list, less_than_pointer + 1, end)


    
#Prints out a test list.
list = [5,3,1,7,4,6,2,8]
shuffle(list)
print("PRE SORT: ", list)
print(quicksort(list, 0, len(list) -1))
print("POST SORT: ", list)
