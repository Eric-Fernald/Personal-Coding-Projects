#This program runs a depth first search on a set of possible paths through a graph.
def dfs(graph, current_vertex, target_value, visited=None):
  if visited is None:
    visited = []
	
  visited.append(current_vertex)
  #Defines the base case.
  if current_vertex == target_value:
    return visited
	
  # Adds the recursive case.
  for neighbor in graph[current_vertex]:
    if neighbor not in visited:
      path = dfs(graph, neighbor, target_value, visited)
      
      if path:
        return path
      
#Establishes the graph and associated data.
the_most_dangerous_graph = {
    'lava': set(['sharks', 'piranhas']),
    'sharks': set(['lava', 'bees', 'lasers']),
    'piranhas': set(['lava', 'crocodiles']),
    'bees': set(['sharks']),
    'lasers': set(['sharks', 'crocodiles']),
    'crocodiles': set(['piranhas', 'lasers'])
  }

# Calls dfs() below and prints the result.
print(dfs(the_most_dangerous_graph, "crocodiles", "bees"))