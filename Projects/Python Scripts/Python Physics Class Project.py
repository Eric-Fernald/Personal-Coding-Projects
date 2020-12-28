#This program calculates a temperature conversion, the force of a train moving in Newtons, and the energy in the release of a bomb explosion.
train_mass = 22680
train_acceleration = 10
train_distance = 100

bomb_mass = 1

#Temperature conversion function.
def f_to_c(f_temp):
  return (f_temp - 32) * 5/9

f100_in_celsius = f_to_c(100)
print(f100_in_celsius)

def c_to_f(c_temp):
  return (c_temp * (9/5) + 32)

c0_in_fahrenheit = c_to_f(0)
print(c0_in_fahrenheit)

#Force calculation function.
def get_force(mass, acceleration):
  return mass * acceleration

train_force = get_force(train_mass, train_acceleration)
print(train_force)

print("The GE train supplies " + str(train_force) + " Newtons of force.")

#Bomb energy calculation function.
def get_energy(mass, c=3*10**8):
  return mass * c**2

bomb_energy = get_energy(bomb_mass)
print(bomb_energy)
print("A 1kg bomb supplies " + str(bomb_energy) + " Joules")

#Train work calculation function.
def get_work(mass, acceleration, distance):
  force = get_force(mass, acceleration)
  return force * distance

train_work = get_work(train_mass, train_acceleration, train_distance)
print("The GE train does " + str(train_work) + " of work over " + str(train_distance) + " meters.")



