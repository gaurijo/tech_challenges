def max_profit(prices)
  min_value = prices.min
  min_index = prices.find_index(min_value)
  max_array = prices[min_index..-1]
  max_value = max_array.max 
  # max_index = max_array.find_index(max_value)
  profit = max_value - min_value 
end

# prices = [7,1,5,3,6,4]
# prices = [7,6,4,3,1]
prices = [2,4,1]
p max_profit(prices)
#input: prices (array)
#output: max profit you can achieve from buying and selling a stock (integer)

#ex: prices =[7,1,5,3,6,4]
#prices[0] -> day 1 -> $7
#prices[1] -> day 2 -> $1 *** This is the cheapest price you can buy
#prices[2] -> day 3 -> $5
#prices[3] -> day 4 -> $3
#prices[4] -> day 5 -> $6 *** This is the highest price you can sell after buying
#prices[5] -> day 6 -> $4

# $6-$1 = $5 *** This is your Max Profit

#find the min. value of the entire array
#Get the index the min. value is at 
#Map through the array only starting at where the min value was
#Get the index the max value is at (must be after the min value)
#Find the difference in values between the two 
#That is your max profit