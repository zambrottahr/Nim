# Prb02-.nim

# This program simulates a simple cash register

import strutils, parseutils, strformat

const SALES_TAX_RATE = 0.0825

var
  meal_price: float      # Price of meal entered by user
  sales_tax: float       # Amount of sales tax
  total: float           # Total bill: meal _ sales_tax
  amt_tendered: float    # Amount received from customers
  change: float          # Change: amt_tendered - total

# Display banner and obtain price
echo "*** Nim-Side Resturant ***"
echo "Enter the price of meal: $ "
meal_price = parseFloat(readLine(stdin))

# Calculate tax and total price
sales_tax = meal_price * SALES_TAX_RATE
total = meal_price + sales_tax

# Display price tax and total
echo "Price of meal: ", fmt("{meal_price:6.2f}")
echo "Sales Tax: ", fmt("{sales_tax:10.2f}")
echo "---------------------------------"
echo "Total Amount: ", fmt("{total:7.2f}")

# Obtain amount tenderd
echo "Enter amount tendered: $ "
amt_tendered = parseFloat(readLine(stdin))

# Calculate change
change = amt_tendered - total

# Display amounts and change
echo "Amount Tendered: $", fmt"{amt_tendered:7.2f}"
echo "Total Amount:    $", fmt"{total:7.2f}"
echo "--------------------------------"
echo "Change:          $", fmt"{change:7.2f}"

# Print cloasing banner

echo "\n\n"
echo "*** Thank You ***"



