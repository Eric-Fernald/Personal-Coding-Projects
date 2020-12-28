#This program returns a list of tourism recommendations based on what the traveler wants to see.    

#Defines list of destinations.
destinations = ["Paris, France", "Shanghai, China", "Los Angeles, USA", "São Paulo, Brazil", "Cairo, Egypt"]

#Defines a test traveler.
test_traveler = ["Erin Wilkes", "Shanghai, China", ["historical site", "art"]]

#Establishes a get_destination_index function.
def get_destination_index(destination):
  destination_index = destinations.index(destination)
  return destination_index

#Establishes a get_traveler_location function.
def get_traveler_location(traveler):
  traveler_destination = traveler[1]
  traveler_destination_index = get_destination_index(traveler_destination)
  return traveler_destination_index

test_destination_index = get_traveler_location(test_traveler)

#Defines the empty list of attractions to be appended to.
attractions = []
for destination in destinations:
    attractions.append([])

#Defines the add_attraction function.
def add_attraction(destination, attraction):
  try: 
    destination_index = get_destination_index(destination)
    attractions_for_destination = attractions[destination_index].append(attraction)
  except SyntaxError:
    print("Caught the syntax error!")
  return

#Creates a list of attractions.
add_attraction("Los Angeles, USA", ["Venice Beach", ["beach"]])
add_attraction("Paris, France", ["the Louvre", ["art", "museum"]])
add_attraction("Paris, France", ["Arc de Triomphe", ["historical site", "monument"]])
add_attraction("Shanghai, China", ["Yu Garden", ["garden", "historcical site"]])
add_attraction("Shanghai, China", ["Yuz Museum", ["art", "museum"]])
add_attraction("Shanghai, China", ["Oriental Pearl Tower", ["skyscraper", "viewing deck"]])
add_attraction("Los Angeles, USA", ["LACMA", ["art", "museum"]])
add_attraction("São Paulo, Brazil", ["São Paulo Zoo", ["zoo"]])
add_attraction("São Paulo, Brazil", ["Pátio do Colégio", ["historical site"]])
add_attraction("Cairo, Egypt", ["Pyramids of Giza", ["monument", "historical site"]])
add_attraction("Cairo, Egypt", ["Egyptian Museum", ["museum"]])

#Find a list of attractions based on the city and interest of the traveler.
def find_attractions(destination, interests):
  destination_index = get_destination_index(destination)
  attractions_in_city = attractions[destination_index]
  attractions_with_interest = []

  for attraction in attractions_in_city:
    possible_attraction = attraction
    attraction_tags = attraction[1]

    for interest in interests:
      if interest in attraction_tags:
        attractions_with_interest.append(possible_attraction[0])

  return attractions_with_interest
#Returns a recommendation list of attractions for the traveler.
def get_attractions_for_traveler(traveler):
  traveler_destination = traveler[1]
  traveler_interests = traveler[2]
  traveler_attractions = find_attractions(traveler_destination, traveler_interests)
  interests_string = "Hi " + traveler[0] + ", we think you'll like these places around " + traveler_destination + ": "
  for i in range(len(traveler_attractions)):
    if traveler_attractions[-1] == traveler_attractions[i]:
      interests_string += "the " + traveler_attractions[i] + "."
    else:
      interests_string += "the " + traveler_attractions[i] + ","
  return interests_string

#Test traveler.
smills_france = get_attractions_for_traveler(["Dereck Smill", "Paris, France", ["monument"]])

#Print the results for the test traveler.
print(smills_france)



