# Your local library needs your help! Given the expected and actual return dates for a library book, 
# create a program that calculates the fine (if any). The fee structure is as follows:

# If the book is returned on or before the expected return date, no fine will be charged (i.e.: fine = 0)

# If the book is returned after the expected return day but still within the same calendar month 
# and year as the expected return date, .fine = 15hackos X days late

# If the book is returned after the expected return month but still within the same calendar year as the expected return date, 
# the .fine = 500hackos X months late

# If the book is returned after the calendar year in which it was expected, there is a fixed fine of .10000 hackos

# Solution

def libraryFine(d1, m1, y1, d2, m2, y2)
    fine = 0
    if y1 > y2
        fine = 10000
    elsif y1 == y2 && m1 > m2
        l = m1 - m2
        fine = 500 * l
    elsif y1 == y2 && m1 == m2 && d1 > d2
         l = d1 - d2
        fine = 15 * l
    elsif y1 <= y2 && m1 <= m2 && d1 <= d2
        fine = 0
    end
    fine
end

puts libraryFine(9,6,2015,6,6,2015)