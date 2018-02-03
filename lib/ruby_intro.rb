# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.inject(0, :+)
end

def max_2_sum arr
  if arr.size > 0
    return arr.max(2).reduce(:+)
  else
    return 0
  end
end

def sum_to_n? arr, n
  if arr.empty?
    return false
  else
    return arr.combination(2).any? {|x, y| x + y == n }
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return s[0] =~ /[bcdfghjklmnprstvwxyzBCDFGHJKLMNPRSTVWXYZ]/
end

def binary_multiple_of_4? s
  if s == "0"
    return true
  else
    return s =~ /^[01]*00$/
  end
end

# Part 3

class BookInStock
  
  public
	attr_accessor :isbn
	attr_accessor :price
	
	def initialize(isbn, price)
		raise ArgumentError if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end
	
	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
