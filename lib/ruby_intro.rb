# @author: Nipun Nath
# @date: 02/04/2019

# Part 1

def sum arr
  # Returns sum of an array
  # Returns 0 if the array is empty
  result = 0
  for num in arr do
    result += num
  end
  return result
end

def max_2_sum arr
  # Returns sum of the greatest 2 values in the array
  arr = arr.sort.reverse
  if arr.length == 0
    return 0 # Returns 0 if the array is empty
  elsif arr.length == 1
    # For 1-element array, returns the value of the element
    return arr[0]
  else
    return arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  # Returns true if sum of any 2 elements of the array is equal to n
  for num2 in arr.permutation(2).to_a do
    if sum(num2) == n
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  # Returns true if a string starts with a consonent (any letter except a,e,i,o,u)
  return (s =~ /[^AEIOU]/i) == 0 && (s =~ /[A-Z]/i) == 0
end

def binary_multiple_of_4? s
  # Returns if the string represents a binary that is multiple of 4
  
  # Return false for invalid binary number or empty strings
  if s =="" || s.match(/[^10]/)
    return false
  end
  
  # Check divisibility
  if s.to_i(2) % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# Represents a book with ISBN number and price
  @@isbn = ""
  @@price = 0.0
  
  # Constructor
  def initialize(isbn, price)
    if isbn == "" || price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end
  
  # Getter
  def isbn
    @isbn
  end
  # Setter
  def isbn=(isbn)
    @isbn = isbn
  end
  # Getter
  def price
    @price
  end
  # Setter
  def price=(price)
    @price = price
  end
  
  def price_as_string
    # Returns price of book as a string
    # with a leading $ sign, and
    # price as 2 digit floating-point precision
    "$" + "%.2f" % @price
  end
end
