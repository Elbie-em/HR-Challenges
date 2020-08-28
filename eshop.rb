# Monica wants to buy a keyboard and a USB drive from her favorite electronics store. 
# The store has several models of each. Monica wants to spend as much as possible for the  items, given her budget.

# Given the price lists for the store's keyboards and USB drives, and Monica's budget, 
# find and print the amount of money Monica will spend. If she doesn't have enough money to both a keyboard and a USB drive, print -1 instead. 
# She will buy only the two required items

#Solution

#
# Complete the getMoneySpent function below.
#
def getMoneySpent(keyboards, drives, budget)
    prices = Array.new
    for i in (keyboards.length).times
        for j in (drives.length).times
          sum = keyboards[i] + drives[j]
          prices << sum
        end
    end
    p = Proc.new { |i| i <= budget }
    if prices.any?(&p)
        price = prices.select(&p).max
        return price
    else
        return - 1
    end

end

#
# The maximum amount of money she can spend on a keyboard and USB drive, or -1 if she can't purchase both items
#

keyboards = [40, 50, 60]
drives = [5, 8,12]
budget = 60

moneySpent = getMoneySpent(keyboards, drives, budget)

puts moneySpent
