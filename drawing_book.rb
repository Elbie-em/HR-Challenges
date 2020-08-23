# Brie’s Drawing teacher asks her class to open their books to a page number. 
# Brie can either start turning pages from the front of the book or from the back of the book.
# She always turns pages one at a time. When she opens the book, page 1 is always on the right side:

# When she flips page 1, she sees pages 2 and 3 . Each page except the last page will always be printed on both sides. 
# The last page may only be printed on the front, given the length of the book. If the book is n pages long, 
# and she wants to turn to page p, what is the minimum number of pages she will turn? She can start at the beginning
# or the end of the book.

# Given n and p, find and print the minimum number of pages Brie must turn in order to arrive at page .

# Solution

def pageCount(n, p)
    a = Array.new
    c_arr = Array.new
    cnt = Array.new
    c = 1
    while c <= n 
        a << c
        c += 1
    end
    c_arr << [a.slice!(0)]
    d_arr = a.each_slice(2).to_a
    d_arr.each do |arr|
      c_arr << arr
    end
    c_arr.each do |i|
      cnt << c_arr.index(i) if i.include?(p)
    end
    c_arr.reverse!
    c_arr.each do |i|
      cnt << c_arr.index(i) if i.include?(p)
    end
    p cnt.min

end

pageCount(5,4)

pageCount(6,2)