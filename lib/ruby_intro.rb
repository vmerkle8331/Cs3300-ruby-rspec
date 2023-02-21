# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0;
  if arr.empty? 
    sum = 0;
  else
    arr.each { |a| sum+=a }
  end 
  return sum; 
end

def max_2_sum arr
  sum = 0;
  if arr.empty? 
    sum = 0;
  elsif arr.length == 1
    sum = arr[0];
  else
    arr=arr.sort
    sum = arr[-1] + arr[-2]
  end 
  return sum;
end

def sum_to_n? arr, n

  #combination finds the sum for every pair numbers here I have it then checking if it equals n
  x = arr.combination(2).find { |x, y| x + y == n }
  if x #if it equals n it throws true
    return true
  else #otherwise throws false
    return false
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  # ^ indicates starting, \W is nonletters, then the list of vowels is saying other than this
  if /^[^AEIOUaeiou\W]/i.match(s) == nil 
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  #takes isbn
  attr_reader :isbn
  #takes price
  attr_accessor :price
  
  def initialize(isbn, price)
    #if no isbn then price equals 0
    raise ArgumentError if isbn.empty? || price <= 0
    #assigning variables
    @isbn = isbn
    @price = Float(price)
  end
  
  #changing price from number to string so can have $ and deciaml
  def price_as_string
    format("$%.2f", @price)
  end
end
