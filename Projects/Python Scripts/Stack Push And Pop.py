#This class defines the push and pop methods.
class Stack:
  def __init__(self):
    self.top_item = None
  
  # Defines the push() and pop() methods.
  def push(self, value):
    item = Node(value)
    item.set_next_node(self.top_item)
    self.top_item = item

  def pop(self):
    item_to_remove = self.top_item
    self.top_item = item_to_remove.get_next_node()
    return item_to_remove.get_value()
  
  def peek(self):
    return self.top_item.get_value()