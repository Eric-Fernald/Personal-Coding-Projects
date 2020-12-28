from heapq import heappop, heappush
from math import inf
#This program utilizes Dijkstra's Algorithm to traverse a graph with weighted edges.
#Define the graph and waypoints.
graph = {
        'A': [('B', 10), ('C', 3)],
        'C': [('D', 2)],
        'D': [('E', 10)],
        'E': [('A', 7)],
        'B': [('C', 3), ('D', 2)]
    }

#Defines the algorithm.
def dijkstras(graph, start):
  distances = {}
  
  for vertex in graph:
    distances[vertex] = inf
    
  distances[start] = 0
  vertices_to_explore = [(0, start)]
#Exploring the graph.
  while vertices_to_explore:
    current_distance, current_vertex = heappop(vertices_to_explore)
    
    for neighbor, edge_weight in graph[current_vertex]:
      new_distance = current_distance + edge_weight
      
      if new_distance < distances[neighbor]:
        distances[neighbor] = new_distance
        heappush(vertices_to_explore, (new_distance, neighbor))
        
  return distances
#Prints the shortest distance from the start point to the end point.      
distances_from_d = dijkstras(graph, 'D')
print("\n\nShortest Distances: {0}".format(distances_from_d))
