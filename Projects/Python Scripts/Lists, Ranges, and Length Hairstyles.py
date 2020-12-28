#This program calculates the prices for haircuts.

#Listing the hairstyles.
hairstyles = ["bouffant", "pixie", "dreadlocks", "crew", "bowl", "bob", "mohawk", "flattop"]

#Listing the prices.
prices = [30, 25, 40, 20, 20, 35, 50, 35]

last_week = [2, 3, 5, 8, 4, 4, 6, 2]

total_price = 0

#Executing a for loop over the prices and adding them to the total_price list.
for price in prices:
  total_price += price

#Calculating and printing the average haircut prices.
average_price = total_price / len(prices)
print("Average Haircut Price: " + str(average_price))

#Calculating the new prices for haircuts.
new_prices = [price - 5 for price in prices]
print(new_prices)

total_revenue = 0

for i in range(len(hairstyles)):
  total_revenue += prices[i] * last_week[i]
print("Total Revenue: " + str(total_revenue))

#Calculating and printing the average daily revenue.
average_daily_revenue = total_revenue / 7
print(average_daily_revenue)

#Calculating and printing the haircuts that are under $30.
cuts_under_30 = [hairstyles[i] for i in range(len(hairstyles)) if new_prices[i] < 30]
print(cuts_under_30)