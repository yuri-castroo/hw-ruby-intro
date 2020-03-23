# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  tot_sum = 0
  arr.each {|x| tot_sum += x}
  tot_sum
end

def max_2_sum arr
  # YOUR CODE HERE
  x, y = arr.sort.last(2)
  max = (x || 0) + (y || 0)
  max
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).any? do |pair|
    pair.sum == n 
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " <<  name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /^[bcdfghjklmnpqrstvwxyz]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s =~ /[^01]/ || s.length == 0 
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn 
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn == '' || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string 
    format "$%.2f", price 
  end
end
