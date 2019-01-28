# When done, submit this entire file to the autograder.

# Part 1

# Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero
def sum arr
  arr.inject(0,:+)
end

# Define a method max_2_sum(array) which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element.
def max_2_sum arr
  if arr.empty?
    0
  else
    arr.max(2).reduce(:+)
  end
end

# Define a method sum_to_n?(array, n) that takes an array of integers and an additional integer, n, as arguments and returns true if any two elements in the array of integers sum to n. sum_to_n?([], n) should return false for any value of n, by definition. 
def sum_to_n? arr, n
  if arr.size>=2
    for a in arr
      if arr.include?(n-a) and (a != n-a or arr.count(a) > 1)
        return true
      end
    end
  end
  false
end

# Part 2
# Define a method hello(name) that takes a string representing a name and returns the string "Hello, " concatenated with the name.
def hello(name)
  "Hello, #{name}"
end

# Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a consonant and false otherwise. (For our purposes, a consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works for both upper and lower case and for nonletters! 
def starts_with_consonant? s
  return false if s.empty?
  consonant = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ'
  consonant.each_char{|c|
    return true if s.start_with?(c)
  }
  false
end

# Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents a binary number that is a multiple of 4. NOTE: be sure it returns false if the string is not a valid binary number! 
def binary_multiple_of_4? s
  if not s.empty? and s.count('0-9')==(s.size) and (s.end_with?('00') or s=='0')
    return true
  end
  false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError,'Invalid' if isbn.empty? or price <= 0
    @isbn = isbn  
    @price = price
  end

  def price_as_string()
    return '$' + '%.2f'% @price
  end
end
