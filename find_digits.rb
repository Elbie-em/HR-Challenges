# An integer  is a divisor of an integer  if the remainder of .

# Given an integer, for each digit that makes up the integer determine whether it is a divisor.
# Count the number of divisors occurring within the integer.

def findDigits(n)
    x = n.to_s.split(//)
    x = x.each_index {|i| x[i] = x[i].to_i}
    p x
    c = x.count { |j| n % j == 0 if j != 0}
    p c
end

findDigits(12)
findDigits(1012)