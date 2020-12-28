from node import Node
#This program creates a stack of pizzas and then proceeds to pop them off the stack.
class Stack:
  def __init__(self, limit=1000):
    self.top_item = None
    self.size = 0
    self.limit = limit

  #Defines the push method.
  def push(self, value):
    if self.has_space():
      item = Node(value)
      item.set_next_node(self.top_item)
      self.top_item = item
      self.size += 1
      print("Adding {} to the pizza stack!".format(value))
    else:
      print("No room for {}!".format(value))

  #Defines the pop method.
  def pop(self):
    if not self.is_empty():
      item_to_remove = self.top_item
      self.top_item = item_to_remove.get_next_node()
      self.size -= 1
      print("Delivering " + item_to_remove.get_value())
      return item_to_remove.get_value()
    print("All out of pizza.")

  #Defines the peek method.
  def peek(self):
    if not self.is_empty():
      return self.top_item.get_value()
    print("Nothing to see here!")

  #Checks if the stack has space.
  def has_space(self):
    return self.limit > self.size

  #Checks if the stack is empty.
  def is_empty(self):
    return self.size == 0
  
#Defines an empty pizza stack.
pizza_stack = Stack(6)

#Adding pizzas as they are ready until we have a full stack.
pizza_stack.push("pizza #1")
pizza_stack.push("pizza #2")
pizza_stack.push("pizza #3")
pizza_stack.push("pizza #4")
pizza_stack.push("pizza #5")
pizza_stack.push("pizza #6")
pizza_stack.push("pizza #7")

#Delivering pizzas from the top of the stack down.
print("The first pizza to deliver is " + pizza_stack.peek())
pizza_stack.pop()
pizza_stack.pop()
pizza_stack.pop()
pizza_stack.pop()
pizza_stack.pop()
pizza_stack.pop()

#Pops each pizza off the stack as it's delivered.
pizza_stack.pop()